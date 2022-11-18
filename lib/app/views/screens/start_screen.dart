import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project3/app/views/widget/circle_code_widget.dart';

class StartAppScreen extends StatefulWidget {
  const StartAppScreen({super.key});

  @override
  State<StartAppScreen> createState() => _StartAppScreenState();
}

class _StartAppScreenState extends State<StartAppScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, "/optionAuth");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff667EEA), Color(0xff64B6FF)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 130,
            ),
            const CodeCircles(
              logo: "icon.png",
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 20,
                height: 25,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 4)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
