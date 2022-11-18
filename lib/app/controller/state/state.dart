import 'package:flutter/material.dart';
import 'package:project3/app/controller/state/auth/state.dart';
import 'package:project3/app/controller/state/home/state.dart';
import 'package:project3/app/controller/state/menu/state.dart';

class State {
  late StateAuth? stateAuth;
  late StateHome? stateHome;
  late StateMenu? stateMenu;
  State({this.stateAuth, this.stateHome, this.stateMenu}) {
    if (stateAuth != null) {
      stateAuth!.run();
    }
    if (stateHome != null) {
      stateHome!.run();
    }
    if (stateMenu != null) {
      stateMenu!.run();
    }
  }
}

void showPage(
    {required Widget Function(
            BuildContext, Animation<double>, Animation<double>)
        pageBuilder,
    context,
    bool? isPop}) {
  if (isPop!) {
    Navigator.pop(context!);
  }
  Navigator.push(
    context!,
    PageRouteBuilder(
      pageBuilder: pageBuilder,
      transitionDuration: const Duration(seconds: 1),
      transitionsBuilder: (_, a, __, c) => FadeTransition(
        opacity: a,
        child: c,
      ),
    ),
  );
}
