import 'package:flutter/cupertino.dart';

class SignInModelApp {
  final BuildContext? context;
  final TextEditingController? controller1;
  final TextEditingController? controller2;
  final void Function()? loginIn;
  final void Function()? signUp;

  SignInModelApp(
      {this.context,
      this.controller1,
      this.controller2,
      this.loginIn,
      this.signUp});
}
