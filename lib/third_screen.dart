import 'package:flutter/material.dart';
// import 'package:flutterassignment/check_box.dart';
// import 'package:flutterassignment/constants.dart';
// import 'package:flutterassignment/final_screen.dart';

import 'check_box.dart';
import 'constants.dart';
import 'fourth_screen.dart';
import 'main.dart';
//import 'constant.dart';
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<ThirdScreen> {
  List<String> currentState=Constants.vegetablesMap.keys.toList();
  String appBarTitle='Vegetables';
  @override
  Widget build(BuildContext context) {
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
          ),
        ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(height: 60,),

            Expanded(
              child: ListView.builder(
                  itemCount: currentState.length,
                  itemBuilder: (context, index){
                    // A bad way to achieve the latest state, a better way is by state management like Providers
                    return CustomCheckBox(objectName: currentState[index],);
                  }),
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const FourthScreen()));
            },
                child: const Text('Next', style: TextStyle(color: Colors.black),)),

            const SizedBox(height: 30,),
          ],
        )
    );
  }
}