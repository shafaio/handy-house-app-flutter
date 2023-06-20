import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import 'package:testing/screens/galerry.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:testing/screens/notife.dart';

class NotificationOrder extends StatefulWidget {
  @override
  _NotificationOrderState createState() => _NotificationOrderState();
}

class _NotificationOrderState extends State<NotificationOrder> {
  // final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  //     FlutterLocalNotificationsPlugin();
  @override
  void initState() {
    super.initState();
    // Notif.initialize(flutterLocalNotificationsPlugin);
  }

  TextStyle text = TextStyle(fontSize: 17);
  int number = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      // appBar: AppBar(
      //   title: Text('Payment Results'),
      // ),
      body: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade200,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Information: Transaction $number% Success ',
                style: text,
              ),
              Text(
                randomNumeric(10),
                style: text,
              ),
              Text(
                randomBetween(10, 100).toString(),
                style: text,
              ),
              Text(
                randomString(20),
                style: text,
              ),
              Text(
                randomAlphaNumeric(8),
                style: text,
              ),
              Text(
                randomMerge('Payment', 'Success'),
                style: text,
              ),
              Text(
                randomAlpha(5),
                style: text,
              ),
              // SizedBox(
              //   height: 20,
              // ),

              ElevatedButton(
                  onPressed: () {
                    // Notif.showBigTextNOtificaiton(
                    //     title: 'Message title',
                    //     body: 'Your body long',
                    //     fln: flutterLocalNotificationsPlugin);
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Galery())));
                  },
                  style: ElevatedButton.styleFrom(primary: Color(0xfff9dc5c)),
                  child: Text(
                    'Finished',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
// class NotificationOrder extends StatefulWidget {
//   NotificationOrder({Key? key}) : super(key: key);

//   @override
//   State<NotificationOrder> createState() => _NotificationOrderState();
// }

// class _NotificationOrderState extends State<NotificationOrder> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color.fromARGB(255, 190, 199, 208),
//         appBar: AppBar(
//           backgroundColor: Colors.red,
//           title: Text(
//             'Notification',
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Column(children: [
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       alignment: Alignment.center,
//                       margin: const EdgeInsets.only(bottom: 10, top: 5),
//                       height: 30,
//                       width: 280,
//                       color: Colors.grey,
//                       child: const Text(
//                         'Hello',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                     GestureDetector(
//                       child: const Icon(Icons.remove),
//                       onTap: () {},
//                     )
//                   ],
//                 )
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ElevatedButton.icon(
//                   icon: const Icon(Icons.add),
//                   label: const Text('Create'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blueAccent,
//                   ),
//                   onPressed: () {},
//                 ),
//                 ElevatedButton.icon(
//                   icon: const Icon(Icons.clear),
//                   label: const Text('Create'),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.red,
//                   ),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ]),
//         ));
//   }
// }
