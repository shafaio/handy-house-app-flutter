import 'package:flutter/material.dart';
import 'package:testing/screens/detail.dart';
import 'package:testing/screens/items.dart';
import 'package:testing/screens/payment.dart';

class Myan extends StatefulWidget {
  Myan({Key? key}) : super(key: key);

  @override
  State<Myan> createState() => _MyanState();
}

class _MyanState extends State<Myan> {
  final _listItem = [
    Items(
        id: 12,
        name: 'Murals',
        price: 75,
        quantity: 0,
        desc:
            'A mural artist is someone who has expertise in creating mural art. Mural art is an art form that involves painting or decorating the surface of a wall or building with a large, striking image or design.',
        image: 'assets/murals.png'),
  ];
  @override
  Widget build(BuildContext context) {
    int total = 0;
    // Kondisi dimana value dari semua type yang ada dioprasikan secara matematis
    for (var i = 0; i < _listItem.length; i++) {
      total += _listItem[i].price * _listItem[i].quantity;
    }
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 204, 193, 204),
        bottomNavigationBar: Container(
          height: 60,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('TOTAL',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              Text('US\$$total',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              OutlinedButton(
                child: Text(
                  "CONFIRM & PAY",
                  style: TextStyle(
                    color: Colors.yellow,
                    // backgroundColor: Colors.transparent,
                  ),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text('Confirmed list'),
                            content: const Text('Do you want to continue?'),
                            actions: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xfff9dc5c)),
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  child: const Text('No',
                                      style: TextStyle(color: Colors.black))),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xfff9dc5c)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PaymentPage()));
                                  },
                                  child: const Text('Yes',
                                      style: TextStyle(color: Colors.black)))
                            ],
                          ));
                },
                // child: null,
              ),
            ],
          ),
        ),
        body: ListView(
            children: _listItem
                .map((item) => InkWell(
                      onTap: () async {
                        var result = await Navigator.of(context)
                            .pushNamed('/desc', arguments: {
                          'item': item,
                        });
                        _handleNavResult(result, item);
                      },
                      child: Detail(Items(
                          id: item.id,
                          name: item.name,
                          price: item.price,
                          quantity: item.quantity,
                          desc: item.desc,
                          image: item.image)),
                    ))
                .toList()
            // for (var i = 0; i < 15; i++)

            ));
  }

  // Function dari kelas yang berisi Class-Class
  void _handleNavResult(Object? result, Items item) {
    // Kondisi dimana ketika hasilnya bersifat tidak sama dengan null maka quantity dari satu persatu akan dioprasikan secara matematis
    if (result != null) {
      // variable untuk mengambil hasil dari String dan object
      var resultMap = result as Map<String, Object>;
      // Kondisi ketika value dari Array quantity yang telah diambil
      if (resultMap.containsKey('quantity')) {
        var quantity = resultMap['quantity'];
        // kondisi ketika value dari quantity bernilai integer
        if (quantity is int) {
          // Mendeklarasikan bahwa memang benar type nya bernilai integer
          int _quantity = quantity;
          var index = _listItem.indexOf(item);
          // Kondisi ketika index lebih besar sama dengan 0 akan mendeklarasikan type yang diambil dari nilai Items
          if (index >= 0) {
            setState(() {
              _listItem[index] = Items(
                id: item.id,
                name: item.name,
                price: item.price,
                quantity: _quantity,
                desc: item.desc,
                image: item.image,
              );
            });
          }
        }
      }
    }
  }
}
