import 'dart:math';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class addnote extends StatefulWidget {
  @override
  _addnoteState createState() => _addnoteState();
}

class _addnoteState extends State<addnote> {
  // Controller
  TextEditingController second = TextEditingController();
  TextEditingController third = TextEditingController();
  // Firebase
  final fb = FirebaseDatabase.instance;
  @override
  Widget build(BuildContext context) {
    // @
    var rng = Random();
    var k = rng.nextInt(10000);
    final ref = fb.ref().child('Order/$k');

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(123, 4, 24, 35),
              Color.fromRGBO(39, 105, 171, 1),
            ],
            begin: FractionalOffset.bottomCenter,
            end: FractionalOffset.topCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: TextField(
                controller: second,
                decoration: InputDecoration(
                  hintText: 'Service',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: TextField(
                controller: third,
                decoration: InputDecoration(
                  hintText: 'Person',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all()),
              child: TextField(
                controller: third,
                decoration: InputDecoration(
                  hintText: 'Price',
                ),
              ),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 26, 94, 126),
              onPressed: () {
                ref.set({
                  "Service": second.text,
                  "Person": third.text,
                }).asStream();
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => Home()));
              },
              child: Text(
                "Save",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Text(
            //   "Social Media",
            //   style: TextStyle(
            //       fontStyle: FontStyle.italic,
            //       fontSize: 10,
            //       color: Colors.black),
            // ),
          ],
        ),
      ),
    );
  }
}
