import 'package:flutter/cupertino.dart';
import 'package:project3/app/controller/action.dart' as action;
import 'package:flutter/foundation.dart' show immutable;

@immutable
class MenuItemProfileAction extends action.Action {
  final BuildContext? context;
  const MenuItemProfileAction({this.context});
}

@immutable
class MenuItemMyCartAction extends action.Action {
    final BuildContext? context;
  const MenuItemMyCartAction({this.context});
}

@immutable
class MenuItemFavouriteAction extends action.Action {
    final BuildContext? context;
  const MenuItemFavouriteAction({this.context});
}

@immutable
class MenuItemMyOrdersAction extends action.Action {
    final BuildContext? context;
  const MenuItemMyOrdersAction({this.context});
}

@immutable
class MenuItemLanguageAction extends action.Action {
    final BuildContext? context;
  const MenuItemLanguageAction({this.context});
}

@immutable
class MenuItemSettingsAction extends action.Action {
    final BuildContext? context;
  const MenuItemSettingsAction({this.context});
}
