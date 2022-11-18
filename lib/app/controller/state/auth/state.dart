import 'package:flutter/material.dart';
import 'package:project3/app/controller/pages.dart';
import 'package:project3/app/controller/state/state.dart';
import 'package:project3/app/views/screens/auth/options_auth_screen.dart';
import 'package:project3/app/views/screens/auth/signin_auth_screen.dart';
import 'package:project3/app/views/screens/auth/signup_auth_screen.dart';
import 'package:project3/app/views/screens/home/home_screen.dart';

class StateAuth {
  late BuildContext? context;
  late bool? isBack;
  late PageAuth? pageAuth;

  StateAuth({this.context, this.isBack, this.pageAuth});
  StateAuth.empty()
      : isBack = null,
        pageAuth = null,
        context = null;
  StateAuth.opsignIn({BuildContext? contextEmpty})
      : isBack = false,
        pageAuth = PageAuth.opsignIn,
        context = contextEmpty;
  StateAuth.opsignUp({BuildContext? contextEmpty})
      : isBack = false,
        pageAuth = PageAuth.opsignUp,
        context = contextEmpty;
  StateAuth.back({BuildContext? contextEmpty})
      : context = contextEmpty,
        pageAuth = PageAuth.optionBack,
        isBack = true;
  StateAuth.login({BuildContext? contextEmpty})
      : isBack = false,
        pageAuth = PageAuth.signIn,
        context = contextEmpty;
  StateAuth.signup({BuildContext? contextEmpty})
      : isBack = false,
        pageAuth = PageAuth.signUp,
        context = contextEmpty;

  void run() {
    switch (pageAuth) {
      case PageAuth.opsignIn:
        showPage(
            pageBuilder: (_, __, ___) => const SignInScreen(),
            context: context,
            isPop: true);
        break;
      case PageAuth.opsignUp:
        showPage(
            pageBuilder: (_, __, ___) => const SignUpScreen(),
            context: context,
            isPop: true);
        break;
      case PageAuth.optionBack:
        if (isBack!) {
          showPage(
              pageBuilder: (_, __, ___) => const OptionAuthScreen(),
              context: context,
              isPop: true);
        }
        break;
      case PageAuth.signIn:
        showPage(
            pageBuilder: (_, __, ___) => const HomeScreen(),
            context: context,
            isPop: true);
        break;
      case PageAuth.signUp:
        showPage(
            pageBuilder: (_, __, ___) => const HomeScreen(),
            context: context,
            isPop: true);
        break;
      default:
        break;
    }
  }
}
