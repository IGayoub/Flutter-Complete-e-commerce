import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  final String? text;
  final double? w;
  const ButtonApp({Key? key, this.text, this.w,this.login}) : super(key: key);
  final void Function()? login;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: login,
      child: Card(
        elevation: 10,
        child: Container(
            width: MediaQuery.of(context).size.width * w!,
            height: 44,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff667EEA), Color(0xff64B6FF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Text(
                text!,
                style: const TextStyle(color: Colors.white, fontSize: 15),
                textAlign: TextAlign.center,
              ),
            )),
      ),
    );
  }
}
