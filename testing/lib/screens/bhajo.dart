import 'package:flutter/material.dart';
import 'package:testing/screens/detail.dart';
import 'package:testing/screens/items.dart';
import 'package:testing/screens/payment.dart';

class Bhajo extends StatefulWidget {
  Bhajo({Key? key}) : super(key: key);

  @override
  State<Bhajo> createState() => _BhajoState();
}

class _BhajoState extends State<Bhajo> {
  final _listItem = [
    Items(
        id: 5,
        name: 'Electricity',
        price: 200,
        quantity: 0,
        desc:
            'Electricity is a form of energy resulting from the movement of charged particles, such as electrons, through a conductive material. It is a fundamental force of nature and plays a crucial role in our daily lives.',
        image: 'assets/electricity.png'),
    Items(
        id: 15,
        name: 'Weld',
        price: 120,
        quantity: 0,
        desc:
            'A welder is someone who has expertise in metal welding. They are skilled in using the tools and equipment necessary to join or repair metals using the welding process.',
        image: 'assets/weld.png'),
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
