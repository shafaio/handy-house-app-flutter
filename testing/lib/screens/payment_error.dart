import 'package:flutter/material.dart';
import 'package:testing/screens/galerry.dart';

class PaymentErrorPage extends StatelessWidget {
  // Final (variabel yang menggunakan keyword final) diinialisasi pada saat pertama kali digunakan dan hanya disetel sekali.
  // (Array) yang mengambil(Map) nilai (value) (String) yang penyusunannya secara (dynamic)
  final List<Map> items = [
    {"image": atm, "title": "ATM", "price": "XXXX XXXX XXXX XXXX"},
    {"image": online, "title": "PayPal", "price": "XXXX XXXX XXXX XXXX"},
    {"image": online, "title": "Credit Card", "price": "XXXX XXXX XXXX XXXX"},
    {"image": online, "title": "e-Wallet", "price": "XXXX XXXX XXXX XXXX"},
    {"image": online, "title": "PayLater", "price": "XXXX XXXX XXXX XXXX"},
  ];

  PaymentErrorPage({super.key});
  // Mengambil value dari Class yang tidak memiliki nilai
  static get atm => null;

  static get online => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 30.0),
                child: Text(
                  "PAY YOUR BILLS IMMEDIATELY!",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700),
                )),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        margin:
                            const EdgeInsets.only(right: 30.0, bottom: 10.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(5.0),
                          elevation: 3.0,
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              children: <Widget>[
                                SizedBox(
                                  height: 80,
                                  child: PNetworkImage(items[index]["image"]),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        items[index]["title"],
                                        style: const TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                      Text(
                                        "${items[index]['price']}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: 20,
                          right: 15,
                          child: Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  padding: const EdgeInsets.all(0.0),
                                  color: Color(0xfff9dc5c),
                                  child: const Icon(
                                    Icons.payment,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                            child: AlertDialog(
                                                title: Text(
                                                    'Error! list first then you can pay'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  ((context) =>
                                                                      Galery())));
                                                    },
                                                    child: Text(
                                                      'Oke',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xfff9dc5c)),
                                                    ),
                                                  ),
                                                ]),
                                          );
                                        });
                                  })))
                    ],
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "Handy House App         @Handyhouseapp.com",
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    "Glad to work with you,",
                    style:
                        TextStyle(color: Colors.grey.shade700, fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Thank You!",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: MaterialButton(
                      height: 50.0,
                      color: const Color(0xfff9dc5c),
                      child: Text(
                        "PAY NOW".toUpperCase(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                  child: AlertDialog(
                                title:
                                    Text('Error! list first then you can pay'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    Galery())));
                                      },
                                      child: Text(
                                        'Oke',
                                        style:
                                            TextStyle(color: Color(0xfff9dc5c)),
                                      )),
                                ],
                              ));
                            });
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  PNetworkImage(item) {}
}
//   const PaymentPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         iconTheme: IconThemeData(
//           color: Colors.black,
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Text(
//               "Complete your payment!",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 24.0,
//               ),
//             ),
//             const SizedBox(height: 20.0),
//             Row(
//               children: <Widget>[
//                 Expanded(
//                     child: Column(
//                   children: [
//                     Text(
//                       'Free',
//                       style: TextStyle(
//                         fontStyle: FontStyle.normal,
//                       ),
//                     ),
//                     Text(
//                       '7 days',
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 14.0,
//                       ),
//                     ),
//                   ],
//                 )),
//                 Expanded(
//                     child: Column(
//                   children: [
//                     Text(
//                       '\$450',
//                       style: TextStyle(
//                         fontStyle: FontStyle.normal,
//                       ),
//                     ),
//                     Text(
//                       '7 days',
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 14.0,
//                       ),
//                     ),
//                   ],
//                 ))
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: <Widget>[
//                 Expanded(
//                     child: Column(
//                   children: [
//                     Text(
//                       'Free',
//                       style: TextStyle(
//                         fontStyle: FontStyle.normal,
//                       ),
//                     ),
//                     Text(
//                       '7 days',
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 14.0,
//                       ),
//                     ),
//                   ],
//                 )),
//                 Expanded(
//                     child: Column(
//                   children: [
//                     Text(
//                       '\$450',
//                       style: TextStyle(
//                         fontStyle: FontStyle.normal,
//                       ),
//                     ),
//                     Text(
//                       '7 days',
//                       style: TextStyle(
//                         color: Colors.grey,
//                         fontSize: 14.0,
//                       ),
//                     ),
//                   ],
//                 ))
//               ],
//             ),
            
//           ],
//         ),
//       ),
//     );
//   }
// }




























// import 'dart:convert';

// import 'package:flutter_stripe/flutter_stripe.dart';
// import 'package:http/http.dart' as http;

// class PayemntPage extends StatefulWidget {
//   PayemntPage({Key? key}) : super(key: key);

//   @override
//   State<PayemntPage> createState() => _PayemntPageState();
// }

// class _PayemntPageState extends State<PayemntPage> {
//   Map<String, dynamic>? paymentIntent;

//   void makePayment() async {
//     try {
//       paymentIntent = await createPaymentIntent();
//       var gpay = PaymentSheetGooglePay(
//         merchantCountryCode: "US",
//         currencyCode: "US",
//         testEnv: true,
//       );
//       await Stripe.instance.initPaymentSheet(
//           paymentSheetParameters: SetupPaymentSheetParameters(
//         paymentIntentClientSecret: paymentIntent!["client_secret"],
//         style: ThemeMode.dark,
//         merchantDisplayName: "Shafa",
//         googlePay: gpay,
//       ));
//       displayPaymentSheet();
//     } catch (e) {}
//   }

//   void displayPaymentSheet() async {
//     try {
//       await Stripe.instance.presentPaymentSheet();
//       print("Done");
//     } catch (e) {
//       print("Failde");
//     }
//   }

//   createPaymentIntent() async {
//     try {
//       Map<String, dynamic> body = {
//         "amount": "100",
//         "currency": "US",
//       };
//       http.Response response = await http.post(
//           Uri.parse("https://api.stripe.com/v1/payment_intents"),
//           body: body,
//           headers: {
//             "Authorization": "Bearer sk_test_4eC39HqLyjWDarjtT1zdp7dc",
//             "Contenct-Type": "application/x-www-form-urlendcoded",
//           });
//       return json.decode(response.body);
//     } catch (e) {
//       throw Exception(e.toString());
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     Stripe.publishableKey = "pk_test_TYooMQauvdEDq54NiTphI7jx";

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(""),
//       ),
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () {
//               makePayment();
//             },
//             child: const Text("Pay Now!")),
//       ),
//     );
//   }
// }








































// import 'package:flutter/material.dart';
// import 'package:flutter_paystack/flutter_paystack.dart';
// // import 'package:paystack/payment_success.dart';
// import 'package:testing/screens/payment_success.dart';

// class PaymentPage extends StatefulWidget {
//   const PaymentPage({super.key});

//   @override
//   State<PaymentPage> createState() => _PaymentPageState();
// }

// class _PaymentPageState extends State<PaymentPage> {
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController amountController = TextEditingController();
//   TextEditingController emailController = TextEditingController();

//   String publicKey = 'pk_test_79878c9dc401ab5dc178c9a4dc1c7fca4038ca32';
//   final plugin = PaystackPlugin();
//   String message = '';

//   @override
//   void initState() {
//     super.initState();
//     plugin.initialize(publicKey: publicKey);
//   }

//   void makePayment() async {
//     int price = int.parse(amountController.text) * 100;
//     Charge charge = Charge()
//       ..amount = price
//       ..reference = 'ref_${DateTime.now()}'
//       ..email = emailController.text
//       ..currency = 'GHS';

//     CheckoutResponse response = await plugin.checkout(
//       context,
//       method: CheckoutMethod.card,
//       charge: charge,
//     );

//     if (response.status == true) {
//       message = 'Payment was successful. Ref: ${response.reference}';
//       if (mounted) {}
//       Navigator.pushAndRemoveUntil(
//           context,
//           MaterialPageRoute(
//               builder: (context) => PaymentSuccess(message: message)),
//           ModalRoute.withName('/'));
//     } else {
//       print(response.message);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Payment Page'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 controller: amountController,
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter the amount';
//                   }
//                   return null;
//                 },
//                 decoration: const InputDecoration(
//                   prefix: Text('GHS'),
//                   hintText: '1000',
//                   labelText: 'Amount',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 15.0),
//                 child: TextFormField(
//                   controller: emailController,
//                   autovalidateMode: AutovalidateMode.onUserInteraction,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter the email';
//                     }
//                     return null;
//                   },
//                   decoration: const InputDecoration(
//                     hintText: 'example@gmail.com',
//                     labelText: 'Email',
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 20.0),
//                 child: ElevatedButton(
//                   onPressed: () {
//                     makePayment();
//                   },
//                   child: const Text('Make Payment'),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




// // import 'package:flutter/material.dart';
// // import 'package:flutter_paystack/flutter_paystack.dart';
// // import 'package:testing/screens/payment_success.dart';

// // class PaymentPage extends StatefulWidget {
// //   PaymentPage({Key? key}) : super(key: key);

// //   @override
// //   State<PaymentPage> createState() => _PaymentPageState();
// // }

// // class _PaymentPageState extends State<PaymentPage> {
// //   final _formKey = GlobalKey<FormState>();
// //   TextEditingController amountController = TextEditingController();
// //   TextEditingController emailController = TextEditingController();

// //   String publicKey = 'wdqidhqidhqdohwihijicjdichdushcshcs';
// //   final plugin = PaystackPlugin();
// //   String message = '';

// //   @override
// //   void initState() {
// //     super.initState();
// //     plugin.initialize(publicKey: publicKey);
// //   }

// //   void makePayment() async {
// //     int price = int.parse(amountController.text) * 100;
// //     Charge charge = Charge()
// //       ..amount = price
// //       ..reference = 'ref_${DateTime.now()}'
// //       ..email = emailController.text
// //       ..currency = 'GHS';

// //     CheckoutResponse response = await plugin.checkout(
// //       context,
// //       method: CheckoutMethod.card,
// //       charge: charge,
// //     );
// //     if (response.status == true) {
// //       message = 'Payment was successful. Ref: ${response.reference}';
// //       if (mounted) {}
// //       Navigator.pushAndRemoveUntil(
// //           context,
// //           MaterialPageRoute(
// //               builder: (context) => PaymentSuccess(message: message)),
// //           ModalRoute.withName('/'));
// //     } else {
// //       print(response.message);
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Color.fromARGB(255, 44, 117, 190),
// //       // appBar: AppBar(
// //       //   title: Text(''),
// //       body: Padding(
// //         padding: const EdgeInsets.all(12.0),
// //         child: Form(
// //             key: _formKey,
// //             child: Column(
// //               // mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 TextFormField(
// //                   controller: amountController,
// //                   autovalidateMode: AutovalidateMode.onUserInteraction,
// //                   validator: (value) {
// //                     if (value == null || value.isEmpty) {
// //                       return 'Please enter the amount ';
// //                     }
// //                     return null;
// //                   },
// //                   decoration: InputDecoration(
// //                     prefix: Text('GHS'),
// //                     hintText: 'XXX',
// //                     labelText: 'Amount',
// //                     border: OutlineInputBorder(),
// //                   ),
// //                 ),
// //                 SizedBox(
// //                   height: 20,
// //                 ),
// //                 TextFormField(
// //                   controller: emailController,
// //                   autovalidateMode: AutovalidateMode.onUserInteraction,
// //                   validator: (value) {
// //                     if (value == null || value.isEmpty) {
// //                       return 'Please enter the email ';
// //                     }
// //                     return null;
// //                   },
// //                   decoration: InputDecoration(
// //                     hintText: 'Input Email',
// //                     labelText: 'Email',
// //                     border: OutlineInputBorder(),
// //                   ),
// //                 ),
// //                 SizedBox(
// //                   height: 20,
// //                 ),
// //                 ElevatedButton(
// //                     onPressed: () {
// //                       makePayment();
// //                     },
// //                     child: const Text('Make Pay'))
// //               ],
// //             )),
// //       ),
// //     );
// //   }
// // }
