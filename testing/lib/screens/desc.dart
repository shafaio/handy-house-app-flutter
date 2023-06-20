// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:testing/screens/items.dart';

class DescPage extends StatefulWidget {
  DescPage({Key? key}) : super(key: key);

  @override
  State<DescPage> createState() => _DescPageState();
}

class _DescPageState extends State<DescPage> {
  // Mendeklarasikan Class dan type dari file items.dart
  Items? _item;
  int _counter = -1;

  // Function yang berisi Class yang mendeklarasikan sekaligus mengatur button tambah dari suatu value
  void plusState() {
    setState(() {
      _counter++;
    });
  }

  // Function terdiri dari Class yang mendeklarasikan sekaligus mengatur button minus dari suatu value
  void minState() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Type data vaiable yang berisikan argumen kondisi
    var args =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    if (args.containsKey('item')) {
      var item = args['item'];
      if (item is Items) {
        _item = item;
        if (_counter < 0) {
          _counter = _item?.quantity ?? -1;
        }
      }
    }

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          'Detail Item',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xfffbefb3),
      ),
      body: Column(
        // Untuk membagi ruang kosong
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // Mengambil khususnya list dari suatu widget
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                '${_item?.image}',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.35,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 19, vertical: 5),
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  _item?.name ?? 'Error',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'US\$${_item?.price ?? 'XX'} /Service',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  _item?.desc ?? 'Error',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: minState,
                  icon: Icon(
                    Icons.remove_circle_rounded,
                  )),
              Text('$_counter',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              IconButton(
                  onPressed: plusState, icon: Icon(Icons.add_circle_rounded)),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Color(0xfff9dc5c)),
              onPressed: () {
                Navigator.of(context).pop({
                  'quantity': _counter,
                });
              },
              child: Text(
                'Book Now',
                style: TextStyle(color: Colors.white),
              )),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
