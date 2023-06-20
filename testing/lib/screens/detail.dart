import 'package:flutter/material.dart';
import 'package:testing/screens/items.dart';

class Detail extends StatelessWidget {
  // Mendeklarasikan Class dan type
  final Items item;
  Detail(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.all(12),
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              '${item.image}',
              width: 150,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 170,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'US\$${item.price} /Service',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '${item.quantity}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 33),
                    alignment: Alignment.center,
                    width: 100,
                    height: 30,
                    color: Color(0xfff9dc5c),
                    child: Text(
                      'View detail',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  )
                ]),
          )
        ],
      ),
    );
  }
}



    //   body: Center(
    //     child: Column(
    //       children: <Widget>[
    //         SizedBox(
    //           height: 50,
    //         ),
    //         Image.network(
    //           user.urlavatar,
    //           height: 400,
    //           width: double.infinity,
    //           fit: BoxFit.cover,
    //         ),
    //         const SizedBox(
    //           height: 20,
    //         ),
    //         Text(
    //           user.item,
    //           style: const TextStyle(
    //             fontSize: 50,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //         Text(
    //           user.price,
    //           style: const TextStyle(
    //             fontSize: 50,
    //             fontWeight: FontWeight.bold,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
   
