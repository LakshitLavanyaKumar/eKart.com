// import 'package:flutter/material.dart';
// import 'eKart/intropage.dart';
// void main() {
//   runApp(const MyApp() );
// }
//
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key,});
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(// whole app needs to be wrapped with material app ,
//       // only one material app in entire app
//       home: IntroPage(),
//       debugShowCheckedModeBanner: false,
//
//     );
//
//   }
// }



import 'package:app_dev_cc_course/second_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutterassignment/second_screen.dart';

void main() {
  runApp(const MyApp());
}

// The main application widget
class MyApp extends StatelessWidget {
  // Constructor for MyApp
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // MaterialApp is the root widget that holds the entire app
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}

// The first screen widget
class FirstScreen extends StatelessWidget {
  // Constructor for FirstScreen
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SafeArea ensures content is not obscured by device status bar or navigation bar
    return SafeArea(
      // Scaffold provides the basic structure of the visual interface
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(238, 241, 244, 1),

        // Center widget centers its child both vertically and horizontally
        body: Center(
          // Column widget arranges its children in a vertical array
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Align children in the center horizontally
            //mainAxisAlignment: MainAxisAlignment.center, // Align children in the center vertically
            children: [
              // Icon widget displays a material design icon
              const SizedBox(height: 80,),
             const Text(
                'eKart.com',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(height: 30,),
              Image.asset(
                  'lib/images/logos.jpg', ),
              //const Icon(Icons.shopping_cart, size: 35, color: Colors.black,),
              // ElevatedButton is a button with a Material-style raised surface
              const SizedBox(height: 10,),
              const Text(
                'Freshness At Your Doorstep!',
                style: TextStyle(
                  fontSize: 30,


                ),
              ),
              const SizedBox(height: 80,),

              ElevatedButton(
                onPressed: () {
                  // Navigate to the SecondScreen when the button is pressed
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondScreen()));
                },
                child: const Text('Lets Get Started', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}