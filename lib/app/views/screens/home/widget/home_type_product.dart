// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project3/app/controller/bloc/app_bloc.dart';
import 'package:project3/app/controller/event/home/home_action.dart';
import 'package:project3/app/views/screens/home/widget/home_type_categorie_widget.dart';

import 'card_feautred.dart';

class HomeTypeProduct extends StatelessWidget {
  const HomeTypeProduct({Key? key, this.htc, this.image}) : super(key: key);
  final String? htc;
  final image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeTypeCategories(
          $text1: htc,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            children: [
              SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    image!.length,
                    (index) => GestureDetector(
                      onTap: () {
                        context.read<AppBloc>().add(HomeCardDetailsAction(context: context,imageName: image[index]));
                      },
                      child: CardFeautred(
                        image: image,
                        index: index,
                        noRight: false,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
