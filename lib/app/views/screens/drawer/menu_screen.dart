import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project3/app/controller/bloc/app_bloc.dart';
import 'package:project3/app/controller/event/home/home_action.dart';
import 'package:project3/app/controller/event/menu/menu_action.dart';
import 'package:project3/app/util/app_constant.dart' as names;
import 'package:project3/app/views/util/app_colors.dart';

class MenuNavigation extends StatelessWidget {
  const MenuNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    Iterable<String> namesMenu = names.namesMenu;
    Iterable<void Function()> callBack = [
      () {
        Navigator.pop(context);
      },
      () {
        context.read<AppBloc>().add(MenuItemProfileAction(context: context));
      },
      () {
        context.read<AppBloc>().add(MenuItemMyCartAction(context: context));
      },
      () {
        context.read<AppBloc>().add(MenuItemMyCartAction(context: context));
      },
      () {
        context.read<AppBloc>().add(MenuItemProfileAction(context: context));
      },
      () {
        context.read<AppBloc>().add(MenuItemProfileAction(context: context));
      },
      () {
        context.read<AppBloc>().add(MenuItemProfileAction(context: context));
      }
    ];
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: ListView.builder(
              itemCount: namesMenu.length,
              itemBuilder: (context, index) => TextButton(
                onPressed: callBack.elementAt(index),
                child: Text(
                  namesMenu.elementAt(index),
                  style: const TextStyle(
                    color: ColorApp.greySahdePlus,
                    fontSize: 19,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 20),
              child: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    context
                        .read<AppBloc>()
                        .add(HomeCloseMenuAction(context: context));
                  }),
            ),
          )
        ],
      ),
    );
  }
}
