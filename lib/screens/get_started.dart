import 'package:duolingo_clone/screens/what_to_learn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../main.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var sWidth = MediaQuery.of(context).size.width - 16;
    return Scaffold(
      backgroundColor: Color(0xFF263238),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Lottie.asset("assets/hi_lottie.json", height: 200, width: 200),
            Text("Fluent",
                style: GoogleFonts.anton(
                  color: Colors.blue,
                  fontSize: 22,
                  // fontWeight: FontWeight.bold,
                )),
            Text("Learn a language for free.\nForever.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                )),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: FancyButton(
                width: sWidth,
                center: true,
                child: Text(
                  "Get Started",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    // fontFamily: 'Gameplay',
                  ),
                ),
                size: 35,
                color: Color.fromARGB(255, 70, 222, 75),
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const WhatToLearnScreen(),
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
