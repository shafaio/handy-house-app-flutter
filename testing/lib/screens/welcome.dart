// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  // Array yang mendeklarasikan image yang diambil menggunakan url/link
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "white sneaker with adidas logo",
      "price": "\$255",
      "images": "https://wallpapercave.com/w/wp1991955.jpg",
    },
    {
      "title": "Black Jeans with blue stripes",
      "price": "\$245",
      "images": "https://wallpapercave.com/w/wp10509572.jpg",
    },
    {
      "title": "Red shoes with black stripes",
      "price": "\$155",
      "images": "https://wallpapercave.com/w/wp4208305.jpg",
    },
    {
      "title": "Gamma shoes with beta brand.",
      "price": "\$275",
      "images": "https://wallpapercave.com/w/wp10842801.jpg",
    },
    {
      "title": "Alpha t-shirt for alpha testers.",
      "price": "\$25",
      "images": "https://wallpapercave.com/w/wp2089220.jpg",
    },
    {
      "title": "Beta jeans for beta testers",
      "price": "\$27",
      "images": "https://wallpapercave.com/w/wp3853048.jpg",
    },
    {
      "title": "V&V  model white t shirts.",
      "price": "\$55",
      "images": "https://wallpapercave.com/w/wp4682574.jpg",
    },
    {
      "title": "V&V  model white t shirts.",
      "price": "\$55",
      "images": "https://wallpapercave.com/w/wp10685835.jpg",
    },
    {
      "title": "V&V  model white t shirts.",
      "price": "\$55",
      "images": "https://wallpapercave.com/w/wp2163487.jpg",
    },
    {
      "title": "V&V  model white t shirts.",
      "price": "\$55",
      "images": "https://wallpapercave.com/w/wp6718873.jpg",
    }
  ];

  // final urlImages = [
  //   "https://wallpapercave.com/w/wp1991955.jpg",
  //   "https://wallpapercave.com/w/wp10509572.jpg",
  //   "https://wallpapercave.com/w/wp4208305.jpg",
  //   "https://wallpapercave.com/w/wp10842801.jpg",
  //   "https://wallpapercave.com/w/wp2089220.jpg",
  //   "https://wallpapercave.com/w/wp3853048.jpg",
  //   "https://wallpapercave.com/w/wp4682574.jpg",
  //   "https://wallpapercave.com/w/wp10685835.jpg",
  //   "https://wallpapercave.com/w/wp2163487.jpg",
  //   "https://wallpapercave.com/w/wp6718873.jpg"
  // ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          mainAxisExtent: 310,
        ),
        itemCount: gridMap.length,
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16.0,
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0)),
                  child: Image.network(
                    "${gridMap.elementAt(index)['images']}",
                    height: 302,
                    // width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Column(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         "${gridMap.elementAt(index)['title']}",
                //         style: Theme.of(context).textTheme.subtitle1!.merge(
                //               const TextStyle(
                //                 fontWeight: FontWeight.w700,
                //               ),
                //             ),
                //       ),
                //       const SizedBox(
                //         height: 8.0,
                //       ),
                //       Text(
                //         "${gridMap.elementAt(index)['price']}",
                //         style: Theme.of(context).textTheme.subtitle2!.merge(
                //               TextStyle(
                //                 fontWeight: FontWeight.w700,
                //                 color: Colors.grey.shade500,
                //               ),
                //             ),
                //       ),
                const SizedBox(
                  height: 8.0,
                ),
                // Row(
                //   children: [
                //     IconButton(
                //       onPressed: () {},
                //       icon: Icon(
                //         Icons.favorite,
                //       ),
                //     ),
                //     IconButton(
                //       onPressed: () {},
                //       icon: Icon(
                //         Icons.favorite,
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          );
          //  showDialog(
          //       context: context,
          //       builder: (context) {
          //         return Container(
          //             child: AlertDialog(
          //           title: Text(
          //               'Error! select the service and finish it first so you can continue.'),
          //           actions: [
          //             TextButton(
          //                 onPressed: () {
          //                   Navigator.push(
          //                       context,
          //                       MaterialPageRoute(
          //                           builder: ((context) => Galery())));
          //                 },
          //                 child: Text(
          //                   'Oke',
          //                   style: TextStyle(color: Color(0xfff9dc5c)),
          //                 )),
          //           ],
          //         ));
          //       });

          // Scaffold(
          //   body: Container(
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.zero,
          //       gradient: LinearGradient(
          //         colors: [
          //           Color.fromARGB(121, 226, 233, 238),
          //           Color.fromRGBO(223, 229, 235, 1),
          //         ],
          //         begin: FractionalOffset.bottomCenter,
          //         end: FractionalOffset.topCenter,
          //       ),
          //     ),
          //     child: Center(
          //       child: CarouselSlider.builder(
          //         options: CarouselOptions(
          //           height: 550,
          //           autoPlay: true,
          //         ),
          //         itemCount: urlImages.length,
          //         itemBuilder: (context, index, realIndex) {
          //           final urlImage = urlImages[index];

          //           return Container(
          //             margin: EdgeInsets.symmetric(horizontal: 10),
          //             color: Colors.greenAccent,
          //             child: Image.network(
          //               urlImage,
          //               fit: BoxFit.cover,
          //             ),
          //           );
          //         },
          //       ),
          //     ),
          //   ),
          // );
        });
  }
}
