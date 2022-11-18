import 'package:flutter/foundation.dart' show immutable;

@immutable
class SignInModel {
  final String? email;
  final String? pass;

  const SignInModel({this.email,this.pass});
}
