import 'package:flutter/material.dart';
import 'package:testing/screens/pages.dart';

class Dashboards extends StatefulWidget {
  Dashboards({Key? key}) : super(key: key);

  @override
  State<Dashboards> createState() => _DashboardsState();
}

class _DashboardsState extends State<Dashboards> {
  // Final (variabel yang menggunakan keyword final) diinialisasi pada saat pertama kali digunakan dan hanya disetel sekali.
  // (Array) yang mengambil(Map) nilai (value) (String) yang penyusunannya secara (dynamic)
  final List<Map<String, dynamic>> _alllistItems = [
    {
      "id": 1,
      "title": "Main Person Page",
      "page": Travis(),
      "name": "Travis Crecker",
      "age": 29,
      "image": "assets/travis.png",
    },
    {
      "id": 2,
      "title": "Main Person Page",
      "page": John(),
      "name": "John Berkeley",
      "age": 27,
      "image": "assets/john.png",
    },
    {
      "id": 3,
      "title": "Main Person Page",
      "page": Terry(),
      "name": "Terry Bhajo",
      "age": 32,
      "image": "assets/terry.png",
    },
    {
      "id": 4,
      "title": "Main Person Page",
      "page": Paul(),
      "name": "Paul Takken",
      "age": 30,
      "image": "assets/paul.png",
    },
    {
      "id": 5,
      "title": "Main Person Page",
      "page": Masha(),
      "name": "Masha Sicth",
      "age": 26,
      "image": "assets/masha.png",
    },
    {
      "id": 6,
      "title": "Main Person Page",
      "page": David(),
      "name": "David Tezz",
      "age": 45,
      "image": "assets/david.png",
    },
    {
      "id": 7,
      "title": "Main Person Page",
      "page": Shenny(),
      "name": "Shenny Myan",
      "age": 35,
      "image": "assets/shenny.png",
    },
    {
      "id": 8,
      "title": "Main Person Page",
      "page": Cherrys(),
      "name": "Cherrys Bellas",
      "age": 27,
      "image": "assets/cherrys.png",
    },
  ];
  // Mendeklarasikan ulang agar value yang sudah dijabarkan diatas tidak mengambang
  List<Map<String, dynamic>> _foundItems = [];

  @override
  // Metode yang dipanggil sekali waktu ketika menggunakan StateFul Widget
  initState() {
    _foundItems = _alllistItems;
    super.initState();
  }

  // Function sebagai penanda berupa kontruksi yang dilajutkan fungsinya ketika sudah dideklarasikan pada awal
  void _runFilter(String enteredKeyword) {
    // Mendeklarasikan hasil perhitungan dari suatu kondisi ketika mengkonversi String menjadi huruf kecil
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _alllistItems;
      // Kondisi pengecualian
    } else {
      results = _alllistItems
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    // Mengelola status Widget yang dideklarasikan
    setState(() {
      _foundItems = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Struktur yang digunakan untuk mengatur tata letak visual sebagai material dasar
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 204, 193, 204),
        // Menambahkan ruang kosong pada body
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TextField(
                onChanged: (value) => _runFilter(value),
                decoration: const InputDecoration(
                    labelText: 'Search', suffixIcon: Icon(Icons.search)),
              ),
              const SizedBox(
                height: 20,
              ),
              // Widget untuk memperluas guna untuk memberikan ruang yang sama pada anak widget
              Expanded(
                child: _foundItems.isNotEmpty
                    // merubah sumber data yang telah di deklarasikan menjadi daftar widget
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 315,
                                childAspectRatio: 3 / 2,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 50),
                        itemCount: _foundItems.length,
                        itemBuilder: (context, index) => Card(
                          margin: const EdgeInsets.symmetric(
                              vertical: 0.5, horizontal: 0.5),
                          semanticContainer: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          key: ValueKey(_foundItems[index]["id"]),
                          color: Color(0xfffbefb3),
                          elevation: 10,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Scaffold(
                                    appBar: AppBar(
                                      title: Text(
                                        _foundItems[index]['title'],
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      backgroundColor: Color(0xfffbefb3),
                                    ),
                                    body: _foundItems[index]['page'],
                                  );
                                }),
                              );
                            },
                            child: ListTile(
                              // contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0)
                              leading: Text(
                                _foundItems[index]["id"].toString(),
                                style: const TextStyle(fontSize: 20),
                              ),
                              title: Text(_foundItems[index]['name']),
                              subtitle: Text(
                                  '${_foundItems[index]["age"].toString()} years old'),
                              // trailing:
                              //     Image.asset(_foundItems[index]['image']),
                            ),
                          ),
                        ),
                      )
                    : const Text(
                        'No result found',
                        style: TextStyle(fontSize: 24),
                      ),
              )
            ],
          ),
        ));
  }
}

// body: Container(
//   height: 100,
//   child: ListView.builder(
//     scrollDirection: Axis.horizontal,
//     padding: const EdgeInsets.all(10),
//     itemBuilder: (context, index) {
//       return CircleAvatar(
//           radius: 55,
//           child: CircleAvatar(
//             radius: 45,
//             backgroundImage:
//                 NetworkImage("https://i.pravatar.cc/150?img=$index"),
//           ));
//     },
//     itemCount: 20,
//         body: GridView.count(
//           mainAxisSpacing: 5,
//           crossAxisCount: 1,
//           crossAxisSpacing: 1,
//           children: <Widget>[
//             // 1
//             Card(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.network("https://wallpapercave.com/w/wp11131004.jpg"),
//                   Text("'Travis Cracker'"),
//                   Text(
//                       "He is a professional foreman, since childhood he has been accustomed to things related to construction seeing his father is an architect. Now he is fully working on this app."),
//                 ],
//               ),
//             ),
//             // 2
//             Card(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.network(
//                     "https://wallpapercave.com/w/wp11131009.jpg",
//                   ),
//                   Text("'John Berkeley'"),
//                   Text(
//                       "After all the buildings 'stand up' perfectly, it's the painter's turn to show off with his skills. As the name implies, painters work to paint the entire wall of the house, both from the inside and the outside. Usually, the painter also doubles as furnishing and staining wood, doors and windows."),
//                 ],
//               ),
//             ),
//             // 3
//             Card(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.network(
//                     "https://wallpapercave.com/w/wp11131072.jpg",
//                   ),
//                   Text("'Terry Bhajo'"),
//                   Text(
//                       "Electrical Technician Job Description – This type of work may be familiar to most people. As the name implies, an electrician is a person who is closely related to the electrical system in a building. As we all know, electricity is the main operational source for the company."),
//                 ],
//               ),
//             ),
//             // 4
//             Card(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.network(
//                     "https://wallpapercave.com/w/wp11131093.jpg",
//                   ),
//                   Text("'Paul Takken'"),
//                   Text(
//                       "The prospect of becoming a private driver is pretty good, because everyone needs the services of a driver. Especially if you already have experience, your chances of getting a job will be easier. Or you can also join a driver outsourcing service to help you get a job as a professional driver."),
//                 ],
//               ),
//             ),
//             // 5
//             Card(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.network(
//                     "https://wallpapercave.com/w/wp11857364.jpg",
//                   ),
//                   Text("'Masha Sicth'"),
//                   Text(
//                       "He is a person who loves plants and plants, lots of plant seeds live because he is good at caring for them. Until it occurred to him to work in the plantation sector, which can fulfill his hobbies and of course make money."),
//                 ],
//               ),
//             ),
//             // 6
//             Card(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.network(
//                     "https://wallpapercave.com/w/wp12369261.jpg",
//                   ),
//                   Text("'David Tezz'"),
//                   Text(
//                       "Mechanical Staff Are workers or employees who work in companies or industrial factories in the Engineering Division who serve as Mechanical Staff or Mechanical Technician Staff. Mechanical Technician Staff are different from Mechanical"),
//                 ],
//               ),
//             ),
//             // 7
//             Card(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.network(
//                     "https://wallpapercave.com/w/wp12369275.jpg",
//                   ),
//                   Text("'Shenny Myan'"),
//                   Text(
//                       "An artist who initially plunged into old school techniques, in the form of an artist who only expresses himself. When the art world was developing, especially mural art, which is currently being loved by many artists."),
//                 ],
//               ),
//             ),
//             // 8
//             Card(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.network(
//                     "https://wallpapercave.com/w/wp12369325.jpg",
//                   ),
//                   Text("'Cherrys Bellas"),
//                   Text(
//                       "This work requires the ability to combine attractive designs and building functions that suit the purpose and application. This woman is very fond of making various designs for anything, because she has a very broad mind about a form that can be applied to the image of a building."),
//                 ],
//               ),
//             ),
//             // 9
//           ],
//         ));
//     // ),
//     // ),
