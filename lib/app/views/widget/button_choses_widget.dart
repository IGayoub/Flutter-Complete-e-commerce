import 'package:flutter/material.dart';
import 'package:project3/app/views/widget/button_app_widget.dart';

class ButtonChoses extends StatelessWidget {
  const ButtonChoses({Key? key, required this.nameBtn1, required this.nameBtn2})
      : super(key: key);
  final String nameBtn1;
  final String nameBtn2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 45,
                margin: const EdgeInsets.only(bottom: 70),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all(
                      const RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.blue,
                            width: 2,
                            style: BorderStyle.solid),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    nameBtn1,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ),
              )),
          Align(
            alignment: Alignment.bottomCenter,
            child: ButtonApp(
              text: nameBtn2,
              w: 1,
            ),
          ),
        ],
      ),
    );
  }
}
