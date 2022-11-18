import 'package:flutter/material.dart';
import 'package:project3/app/views/util/app_colors.dart';

import '../../../widget/button_app_widget.dart';

class SignMoreButtons extends StatelessWidget {
  const SignMoreButtons(
      {Key? key, this.textSign1, this.textSign2, this.textSign3,this.ev1,this.ev2})
      : super(key: key);
  final String? textSign1;
  final String? textSign2;
  final String? textSign3;
  final void Function()? ev1;
  final void Function()? ev2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonApp(
          text: textSign1,
          w: 1,
          login: ev1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textSign2!,
              style: const TextStyle(color: ColorApp.greyShade200),
            ),
            TextButton(
                onPressed: ev2,
                child: Text(
                  textSign3!,
                  style: const TextStyle(color: Colors.black),
                ))
          ],
        )
      ],
    );
  }
}
