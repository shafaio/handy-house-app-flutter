import 'package:flutter/material.dart';
import 'package:testing/reusablewidgets/reusablewidget.dart';
import 'package:testing/screens/login_error.dart';
// import 'package:testing/screens/signing.dart';
import '../utils/color.dart';

class Homes extends StatefulWidget {
  Homes({Key? key}) : super(key: key);

  @override
  State<Homes> createState() => _HomesState();
}

class _HomesState extends State<Homes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          hexStringColor("F9DC5C"),
          hexStringColor("F9DC5C"),
          hexStringColor("F9DC5C"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: WillPopScope(
        onWillPop: showExitDialog,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            logoWidget('assets/handy.png'),
            Container(
              child: OutlinedButton(
                  child: Text("GET STARTED",
                      style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.transparent)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => SignIngError())));
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Center(child: CircularProgressIndicator());
                        });
                  } //   child:
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Future<bool> showExitDialog() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Exit app'),
              content: const Text('Do you want to exit this app?'),
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
