import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:lottie/lottie.dart';
// import 'package:shopping_cart/screens/home_screen.dart';

import 'main.dart';

// StatefulWidget for the SuccessScreen
class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  void initState() {
    // Delaying navigation to HomeScreen after 5 seconds
    Future.delayed(
      const Duration(seconds: 5),
          () => Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const FirstScreen(), // Navigating to HomeScreen
          ),
              (route) => false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: const Text('SUCCESS!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Displaying a Lottie animation for success
           /// Lottie.asset("assets/success_icon_lottie.json", repeat: false),
            // Displaying a text indicating successful order placement
            Text(
              "Congratulations 🎉!\n Your order has been placed....",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
    );
  }
}