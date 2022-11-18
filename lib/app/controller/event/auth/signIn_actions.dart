import 'package:flutter/foundation.dart' show immutable;
import 'package:project3/app/controller/action.dart';
import 'package:project3/app/controller/pages.dart';
import 'package:project3/app/model/auth/signIn_model.dart';

@immutable
class LoginAction extends Action {
  final SignInModel? signInModel;
  final PageApp? pageName;
  const LoginAction({
    this.signInModel,
    this.pageName,
  });
}

@immutable
class SignUpAction extends Action {
  final PageApp? pageApp;
  const SignUpAction({this.pageApp});
}
