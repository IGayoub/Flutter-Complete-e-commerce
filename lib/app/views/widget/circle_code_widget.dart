// ignore_for_file: unnecessary_null_in_if_null_operators

import 'package:flutter/material.dart';

class CodeCircles extends StatelessWidget {
  const CodeCircles({Key? key, this.color1, this.color2, this.logo})
      : super(key: key);
  final Color? color1;
  final Color? color2;
  final String? logo;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 220,
      decoration: BoxDecoration(
        gradient: color1 != null
            ? null
            : const LinearGradient(
                colors: [Color(0xff667EEA), Color(0xff64B6FF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
        color: color1 ?? null,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              gradient: color1 != null
                  ? null
                  : const LinearGradient(
                      colors: [Color(0xff667EEA), Color(0xff64B6FF)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
              color: color2 ?? null,
              shape: BoxShape.circle,
            ),
            child: Image.asset("assets/images/$logo")),
      ),
    );
  }
}
