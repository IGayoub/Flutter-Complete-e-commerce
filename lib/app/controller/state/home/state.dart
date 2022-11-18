import 'package:flutter/material.dart';
import 'package:project3/app/controller/pages.dart';
import 'package:project3/app/controller/state/state.dart';
import 'package:project3/app/views/screens/drawer/menu_screen.dart';
import 'package:project3/app/views/screens/home/categories/categories_bestsell.dart';
import 'package:project3/app/views/screens/home/categories/categories_feautred.dart';
import 'package:project3/app/views/screens/home/home__screen_card_details.dart';

class StateHome {
  late BuildContext? context;
  late PageHome? pageHome;
  late String? nameImage;
  StateHome({this.context, this.pageHome});

  StateHome.empty()
      : context = null,
        pageHome = null;
  StateHome.menu({required BuildContext contextV})
      : context = contextV,
        pageHome = PageHome.menu;
  StateHome.menuClose({required BuildContext contextV})
      : context = contextV,
        pageHome = PageHome.menuClose;
  StateHome.details({required BuildContext contextV, String? nameImg})
      : context = contextV,
        pageHome = PageHome.details,
        nameImage = nameImg;
  StateHome.backCardDetails({required BuildContext? contextV})
      : context = contextV,
        pageHome = PageHome.backDetails;
  StateHome.cardSeeAllFeautred({required BuildContext? contextV})
      : context = contextV,
        pageHome = PageHome.seeAllFeatured;
  StateHome.cardSeeAllBestSell({required BuildContext? contextV})
      : context = contextV,
        pageHome = PageHome.seeAllBestSell;

  void run() {
    switch (pageHome) {
      case PageHome.menu:
        showPage(
            pageBuilder: (_, __, ___) => const MenuNavigation(),
            context: context,
            isPop: false);
        break;
      case PageHome.menuClose:
        Navigator.pop(context!);
        break;
      case PageHome.details:
        showPage(
            pageBuilder: (_, __, ___) => HomeCardDetails(imageName: nameImage),
            context: context,
            isPop: false);
        break;
      case PageHome.notifications:
        break;
      case PageHome.backDetails:
        Navigator.pop(context!);
        break;
      case PageHome.seeAllFeatured:
        showPage(
            pageBuilder: (_, __, ___) => const CategorieFeautred(),
            context: context,
            isPop: false);
        break;
      case PageHome.seeAllBestSell:
        showPage(
            pageBuilder: (_, __, ___) => const CategorieBestSell(),
            context: context,
            isPop: false);
        break;
      default:
        break;
    }
  }
}
