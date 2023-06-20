import 'package:flutter/material.dart';
import 'package:random_string/random_string.dart';
import 'package:testing/screens/galerry.dart';

class NotifeIcon extends StatefulWidget {
  @override
  _NotifeIconState createState() => _NotifeIconState();
}

class _NotifeIconState extends State<NotifeIcon> {
  @override
  void initState() {
    super.initState();
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
                randomMerge('Hello', 'Friends'),
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
                    setState(() {
                      // addCount();
                    });
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Galery())));
                  },
                  style: ElevatedButton.styleFrom(primary: Color(0xfff9dc5c)),
                  child: Text(
                    'Back',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
