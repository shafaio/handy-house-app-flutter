import 'package:flutter/material.dart';
import 'package:testing/screens/detail.dart';
import 'package:testing/screens/items.dart';
import 'package:testing/screens/payment.dart';

class Berkeley extends StatefulWidget {
  Berkeley({Key? key}) : super(key: key);

  @override
  State<Berkeley> createState() => _BerkeleyState();
}

class _BerkeleyState extends State<Berkeley> {
  final _listItem = [
    Items(
        id: 1,
        name: 'Wall',
        price: 50,
        quantity: 0,
        desc:
            'A bricklayer is someone who has expertise in construction and renovation work related to the installation, repair, and painting of walls.',
        image: 'assets/wall.png'),
    Items(
        id: 2,
        name: 'Yard',
        price: 40,
        quantity: 0,
        desc:
            'A yard builder is someone who has expertise in maintaining, repairing, and designing yards or gardens. They are usually skilled in various aspects of work such as mowing lawns.',
        image: 'assets/yard.png'),
    Items(
        id: 3,
        name: 'Pipe',
        price: 20,
        quantity: 0,
        desc:
            'A plumbers duties include installing new pipes, connecting pipes to devices such as faucets, showers or toilets, and repairing broken or leaking pipes.',
        image: 'assets/pipe.png'),
    Items(
        id: 4,
        name: 'Lamp',
        price: 35,
        quantity: 0,
        desc:
            'A light worker, or often called an electrician, is someone who has expertise in installing, repairing, and maintaining lighting systems and electrical installations.',
        image: 'assets/lamp.png'),
    Items(
        id: 8,
        name: 'Ceramic',
        price: 40,
        quantity: 0,
        desc:
            'A ceramicist is someone who has expertise in the installation and work related to ceramics. They are trained to measure, cut, install and maintain various types of ceramic tiles or ceramic tiles.',
        image: 'assets/ceramic.png'),
    Items(
        id: 9,
        name: 'Window Room',
        price: 85,
        quantity: 0,
        desc:
            'A window fitter is someone who has expertise in installing, repairing, and maintaining windows. They are usually skilled in various types of windows, including wood windows, aluminum windows.',
        image: 'assets/window.png'),
    Items(
        id: 14,
        name: 'Casting',
        price: 50,
        quantity: 0,
        desc:
            'A wall caster is someone who has expertise in the process of casting concrete to build or renovate wall structures. They are trained in preparing formwork or moulds, mixing and pouring concrete.',
        image: 'assets/casting.png'),
    Items(
        id: 6,
        name: 'Carve',
        price: 65,
        quantity: 0,
        desc:
            'An engraver is someone who has expertise in the art of carving, which is the process of carving or sculpting objects or surfaces to create certain patterns, designs or images.',
        image: 'assets/carve.png'),
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
                    color:
                        Colors.yellow, // backgroundColor: Colors.transparent,
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
