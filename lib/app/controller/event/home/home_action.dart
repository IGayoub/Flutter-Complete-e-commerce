// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:project3/app/controller/action.dart' as action;

@immutable
class HomeMenuAction extends action.Action {
  late BuildContext? context;
  HomeMenuAction({this.context});
}

@immutable
class HomeNotificationsAction extends action.Action {
  const HomeNotificationsAction();
}

@immutable
class HomeFilterAction extends action.Action {
  const HomeFilterAction();
}

@immutable
class HomeCardDetailsAction extends action.Action {
  final BuildContext? context;
  final String? imageName;
  const HomeCardDetailsAction({this.context, this.imageName});
}

@immutable
class HomeCategorieDetails extends action.Action {
  const HomeCategorieDetails();
}

@immutable
class HomeSeacrhProduct extends action.Action {
  final String? name;
  const HomeSeacrhProduct({this.name});
}

@immutable
class HomeCloseMenuAction extends action.Action {
  final BuildContext? context;
  const HomeCloseMenuAction({this.context});
}

@immutable
class HomeBackCardDetailsAction extends action.Action {
  final BuildContext? context;
  const HomeBackCardDetailsAction({this.context});
}
@immutable
class HomeCategorieSeeAllseeAllFeaturedAction extends action.Action {
  final BuildContext? context;
  const HomeCategorieSeeAllseeAllFeaturedAction({this.context});
}
@immutable
class HomeCategorieSeeAllseeAllBestSellAction extends action.Action {
  final BuildContext? context;
  const HomeCategorieSeeAllseeAllBestSellAction({this.context});
}
