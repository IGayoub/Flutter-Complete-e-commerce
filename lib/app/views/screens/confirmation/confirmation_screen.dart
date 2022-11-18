import 'package:flutter/material.dart';
import 'package:project3/app/views/widget/button_app_widget.dart';
import 'package:project3/app/views/util/app_colors.dart';
import 'package:project3/app/views/widget/circle_code_widget.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CodeCircles(
                  logo: "LIKE.png",
                  color1: ColorApp.whiteShadePlus,
                  color2: ColorApp.eT3,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Confirmations",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "You havee Successfuly\nCompleted your Payment procdure",
                  style: TextStyle(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ButtonApp(
                text: "Back to Home",
                w: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
