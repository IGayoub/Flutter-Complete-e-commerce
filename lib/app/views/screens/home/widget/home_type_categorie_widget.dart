import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project3/app/controller/bloc/app_bloc.dart';
import 'package:project3/app/controller/event/home/home_action.dart';

class HomeTypeCategories extends StatelessWidget {
  const HomeTypeCategories({Key? key, this.$text1}) : super(key: key);
  final String? $text1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            $text1!,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
            ),
          ),
          InkWell(
            onTap: () {
              $text1!="Feautred"?context.read<AppBloc>().add(
                    HomeCategorieSeeAllseeAllBestSellAction(context: context),
                  ):context.read<AppBloc>().add(
                    HomeCategorieSeeAllseeAllFeaturedAction(context: context),
                  );
            },
            child: const Text(
              "See all",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
