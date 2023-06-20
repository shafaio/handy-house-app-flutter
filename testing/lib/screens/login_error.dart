import 'package:flutter/material.dart';
// import 'package:testing/screens/galerry.dart';
import 'package:testing/screens/signup.dart';
import 'package:testing/utils/color.dart';
import '../reusablewidgets/reusablewidget.dart';

class SignIngError extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  SignIngError({Key? key}) : super(key: key);

  @override
  State<SignIngError> createState() => _SignIngErrorState();
}

class _SignIngErrorState extends State<SignIngError> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: false,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: const Text(
      //     "Sign In",
      //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringColor("F9DC5C"),
          hexStringColor("FAE588"),
          hexStringColor("FCEFB4"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 28, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/handy.png"),
                SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Email", Icons.person_outline, false,
                    _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, true, () {
                  showDialog(
                context: context,
                builder: (context) {
                  return Container(
                      child: AlertDialog(
                    title: Text(
                        'Error! You must create an account first'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => SignIngError())));
                          },
                          child: Text(
                            'Oke',
                            style: TextStyle(color: Color(0xfff9dc5c)),
                          )),
                    ],
                  ));
                });
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (Buildcontext) => SignUp()),
                        );
                      },
                      child: Text(
                        "Register here",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
