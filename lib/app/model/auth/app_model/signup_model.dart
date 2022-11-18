import 'package:flutter/material.dart';

class SignUpModelApp {
  final BuildContext? context;
  final TextEditingController? controller1;
  final TextEditingController? controller2;
  final TextEditingController? controller3;
  final void Function()? signUp;
  final void Function()? signIn;

  SignUpModelApp(
      {this.context,
      this.controller1,
      this.controller2,
      this.controller3,
      this.signUp,
      this.signIn});
}
