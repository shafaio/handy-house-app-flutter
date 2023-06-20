import 'package:flutter/material.dart';
import 'package:testing/screens/detail.dart';
import 'package:testing/screens/items.dart';
import 'package:testing/screens/payment.dart';
// import 'package:testing/screens/payment_login.dart';

class Pictures extends StatefulWidget {
  Pictures({Key? key}) : super(key: key);

  @override
  State<Pictures> createState() => _PicturesState();
}

class _PicturesState extends State<Pictures> {
  // Array biasa
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
        id: 5,
        name: 'Electricity',
        price: 200,
        quantity: 0,
        desc:
            'Electricity is a form of energy resulting from the movement of charged particles, such as electrons, through a conductive material. It is a fundamental force of nature and plays a crucial role in our daily lives.',
        image: 'assets/electricity.png'),
    Items(
        id: 6,
        name: 'Carve',
        price: 65,
        quantity: 0,
        desc:
            'An engraver is someone who has expertise in the art of carving, which is the process of carving or sculpting objects or surfaces to create certain patterns, designs or images.',
        image: 'assets/carve.png'),
    Items(
        id: 7,
        name: 'Garden',
        price: 150,
        quantity: 0,
        desc:
            'A gardener is someone who has expertise in caring for and maintaining a garden or garden. They are usually skilled in various aspects of work such as planting crops, lawn care, pruning trees and shrubs.',
        image: 'assets/garden.png'),
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
        id: 10,
        name: 'Driver',
        price: 55,
        quantity: 0,
        desc:
            'A driver is someone who has the duty and obligation to drive a motorized vehicle, such as a car, truck or bus. The main duty of a driver is to maintain the safety and comfort of passengers.',
        image: 'assets/driver.png'),
    Items(
        id: 11,
        name: 'Mechanic',
        price: 250,
        quantity: 0,
        desc:
            'Mechanic is someone who has expertise in repairing, maintaining, and performing maintenance on motorized vehicles or other machines. Mechanics are trained in various aspects of mechanics.',
        image: 'assets/mechanic.png'),
    Items(
        id: 12,
        name: 'Murals',
        price: 75,
        quantity: 0,
        desc:
            'A mural artist is someone who has expertise in creating mural art. Mural art is an art form that involves painting or decorating the surface of a wall or building with a large, striking image or design.',
        image: 'assets/murals.png'),
    Items(
        id: 13,
        name: 'Architect',
        price: 300,
        quantity: 0,
        desc:
            'Architect is a professional who has knowledge and expertise in designing and planning buildings and environments. They are responsible for integrating functional, aesthetic and safety aspects in the building.',
        image: 'assets/architect.png'),
    Items(
        id: 14,
        name: 'Casting',
        price: 50,
        quantity: 0,
        desc:
            'A wall caster is someone who has expertise in the process of casting concrete to build or renovate wall structures. They are trained in preparing formwork or moulds, mixing and pouring concrete.',
        image: 'assets/casting.png'),
    Items(
        id: 15,
        name: 'Weld',
        price: 120,
        quantity: 0,
        desc:
            'A welder is someone who has expertise in metal welding. They are skilled in using the tools and equipment necessary to join or repair metals using the welding process.',
        image: 'assets/weld.png'),
  ];

//   List<User> users = [
//     const User(
//         item: "Wall",
//         price: "30 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp7448623.jpg"),
//     const User(
//         item: "Yard",
//         price: "50 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp10509634.jpg"),
//     const User(
//         item: "Pipe",
//         price: "25 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp2089236.jpg"),
//     const User(
//         item: "Lamp",
//         price: "22 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp4067057.jpg"),
//     const User(
//         item: "Window Room",
//         price: "34 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp12280951.jpg"),
//     const User(
//         item: "Weld",
//         price: "29 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp6711586.jpg"),
//     const User(
//         item: "Paint Murals",
//         price: "19 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp5292706.jpg"),
//     const User(
//         item: "Carve",
//         price: "21 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp4895236.jpg"),
//     const User(
//         item: "Casting",
//         price: "24 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp7462578.jpg"),
//     const User(
//         item: "Driver",
//         price: "28 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp1997024.jpg"),
//     const User(
//         item: "Architect",
//         price: "50 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp4258299.jpg"),
//     const User(
//         item: "Garden",
//         price: "47 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp9243974.jpg"),
//     const User(
//         item: "Ceramics",
//         price: "33 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp3819991.jpg"),
//     const User(
//         item: "Mechanic",
//         price: "58 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp12276647.jpg"),
//     const User(
//         item: "Electricity",
//         price: "42 Dollar",
//         urlavatar: "https://wallpapercave.com/w/wp10893782.jpg")
//   ];
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





//          body: ListView.builder(
//             itemCount: users.length,
//             itemBuilder: (context, index) {
//               final user = users[index];
              // return
              //  Container(
              //   decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       colors: [
              //         Color.fromARGB(123, 4, 24, 35),
              //         Color.fromRGBO(39, 105, 171, 1),
              //       ],
              //       begin: FractionalOffset.bottomCenter,
              //       end: FractionalOffset.topCenter,
              //     ),
              //   ),
//                 child: Card(
//                   child: ListTile(
//                     leading: CircleAvatar(
//                       radius: 28,
//                       backgroundImage: NetworkImage(user.urlavatar),
//                     ),
//                     title: Text(user.item),
//                     subtitle: Text(user.price),
//                     trailing: const Icon(Icons.read_more_rounded),
//                     onTap: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => Detail(user: user),
//                       ));
//                     },
//                   ),
//                 ),
//               );
//             }),

// class User {
//   final String item;
//   final String price;
//   final String urlavatar;

//   const User({
//     required this.item,
//     required this.price,
//     required this.urlavatar,
//   });
// }

// final lst = List.generate(100, (index) => "$index");
// final lst1 = [
//   "Guitar",
//   "Bass",
//   "Drums",
//   "Cajon",
//   "Keyboard",
//   "Piano",
//   "Flute",
//   "Harmonica",
//   "Violin",
//   "Cello",
//   "Harp",
//   "Saxophone",
//   "Tambourine",
//   "Ukulele",
//   "Triangle"
//   ];
// return Scaffold(
//   floatingActionButton: FloatingActionButton(
//     backgroundColor: Color.fromARGB(255, 23, 7, 94),
//     onPressed: () {

//     },
//     child: Icon(Icons.list_alt_outlined),
//   ),
//   body: ListView.separated(
//       separatorBuilder: (context, index) => Divider(
//             color: Colors.black,
//           ),
//       itemCount: lst1.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           onTap: () {
//             print(lst1[index]);
//           },
//           title: Text(lst1[index]),
//           subtitle: Text("Ebes Music"),
//           trailing: Icon(
//             Icons.star,
//             color: Colors.yellow,
//           ),
//           leading: CircleAvatar(
//             backgroundColor: Colors.brown.shade800,
//             child: Text(lst1[index][0]),
//           ),
//         );
//       }),
// );
