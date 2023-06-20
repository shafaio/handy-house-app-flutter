import 'dart:io';

import 'package:flutter/material.dart';
import 'package:testing/screens/badges.dart';
import 'package:testing/screens/dashboards.dart';
import 'package:testing/screens/payment_error.dart';
import 'package:testing/screens/pictures.dart';
import 'package:testing/screens/signing.dart';
import 'package:testing/screens/welcome.dart';

class Galery extends StatefulWidget {
  Galery({Key? key}) : super(key: key);

  @override
  State<Galery> createState() => _GaleryState();
}

class _GaleryState extends State<Galery> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      // WIdget yang dugunakan berisi 4 ruang yang terletak pada appbar
      length: 4,
      child: Scaffold(
        // extendBody: false,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Handy House App",
              style: TextStyle(color: Colors.black),
            ),
          ),
          automaticallyImplyLeading: (Platform.isIOS) ? true : false,
          backgroundColor: Color(0xfffbefb3),
          actions: [
            Stack(children: [
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NotifeIcon()));
                  print("Notification");
                },
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 216, 199, 3),
                  shape: BoxShape.circle,
                ),
                child: Text('+', style: TextStyle(fontSize: 12)),
              ),
            ]),
            IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text('Logout'),
                          content: const Text('Do you want to logout?'),
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
                                          builder: (context) => SignIng()));
                                },
                                child: const Text('Yes',
                                    style: TextStyle(color: Colors.black)))
                          ],
                        ));
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SignIng()));
                // print("Admin");
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
            ),
          ],
          bottom: const TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.black,
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.explore,
                )),
                Tab(
                  text: "Service",
                ),
                Tab(
                  text: "Payment",
                ),
                Tab(
                  text: "Workers",
                ),
              ]),
        ),
        body: WillPopScope(
          onWillPop: showExitDialog,
          child: TabBarView(children: [
            Welcome(),
            Pictures(),
            PaymentErrorPage(),
            Dashboards(),
          ]),
        ),
      ),
    );
  }

  Future<bool> showExitDialog() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Logout'),
              content: const Text('Do you want to logout?'),
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
                      Navigator.of(context).pop(true);
                    },
                    child: const Text('Yes',
                        style: TextStyle(color: Colors.black)))
              ],
            ));
  }
}
