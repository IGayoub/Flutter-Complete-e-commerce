import 'package:flutter/foundation.dart' show immutable;

@immutable
class SignUpModel {
  final String? name;
  final String? email;
  final String? pass;

  const SignUpModel({
    this.name,
    this.email,
    this.pass,
  });
}
