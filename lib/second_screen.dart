import 'package:app_dev_cc_course/third_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutterassignment/check_box.dart';
// import 'package:flutterassignment/constants.dart';
// import 'package:flutterassignment/third_screen.dart';

import 'check_box.dart';
import 'constants.dart';
//import 'constant.dart';
// SecondScreen is a StatefulWidget representing the second screen in the app
class SecondScreen extends StatefulWidget {
  // Constructor for SecondScreen
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

// The state associated with the SecondScreen widget
class _SecondScreenState extends State<SecondScreen> {
  // List of strings representing the current state of fruits
  List<String> currentState = Constants.fruitsMap.keys.toList();

  // Title for the AppBar
  String appBarTitle = 'Fruits';

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the basic structure of the visual interface
    return Scaffold(
      backgroundColor: const Color.fromRGBO(238, 241, 244, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: Text(appBarTitle,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,

        ),),
        centerTitle: true,
      ),
      // Column widget arranges its children in a vertical array
      body: Column(
        children: [
          // Expanded ensures that the ListView takes up all available vertical space
          const SizedBox(height: 60,),

          Expanded(
            // ListView.builder creates a scrollable list of widgets based on the current state
            child: ListView.builder(
              itemCount: currentState.length,
              itemBuilder: (context, index) {
                // CustomCheckBox is a widget representing a checkbox for a specific object
                // A better way to manage state is to use state management solutions like Providers
                return CustomCheckBox(objectName: currentState[index]);
              },
            ),
          ),
          // ElevatedButton is a button with a Material-style raised surface
          ElevatedButton(
            onPressed: () {
              // Navigate to the ThirdScreen when the button is pressed
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ThirdScreen()));
            },
            child: const Text('Next', style: TextStyle(color: Colors.black)),
          ),
          const SizedBox(height: 30,),

        ],
      ),
    );
  }
}