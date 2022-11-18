import 'package:flutter/material.dart';
import 'package:project3/app/controller/pages.dart';
import 'package:project3/app/controller/state/state.dart';
import 'package:project3/app/views/screens/checkout/checkout_cart_screen.dart';
import 'package:project3/app/views/screens/checkout/widget/card_checkout.dart';
import 'package:project3/app/views/screens/profile/profile_screen.dart';

class StateMenu {
  late BuildContext? context;
  late PageMenu? pageMenu;
  StateMenu({this.context, this.pageMenu});

  StateMenu.empty()
      : context = null,
        pageMenu = null;
  StateMenu.profile({required BuildContext contextV})
      : context = contextV,
        pageMenu = PageMenu.profile;
  StateMenu.mycart({required BuildContext contextV})
      : context = contextV,
        pageMenu = PageMenu.myCart;
  StateMenu.favourite({required BuildContext contextV, String? nameImg})
      : context = contextV,
        pageMenu = PageMenu.favourit;
  StateMenu.myOrders({required BuildContext? contextV})
      : context = contextV,
        pageMenu = PageMenu.myOrders;
  StateMenu.language({required BuildContext? contextV})
      : context = contextV,
        pageMenu = PageMenu.myOrders;
  StateMenu.settings({required BuildContext? contextV})
      : context = contextV,
        pageMenu = PageMenu.settings;

  void run() {
    switch (pageMenu) {
      case PageMenu.profile:
        showPage(
            pageBuilder: (_, __, ___) => const ProfileScreen(),
            context: context,
            isPop: false);
        break;
      case PageMenu.myCart:
        showPage(
            pageBuilder: (_, __, ___) => const CartCheckoutScreen(),
            context: context,
            isPop: false);
        break;
      case PageMenu.favourit:
        break;
      case PageMenu.language:
        break;
      case PageMenu.settings:
        Navigator.pop(context!);
        break;
      default:
        break;
    }
  }
}
