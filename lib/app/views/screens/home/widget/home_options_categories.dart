import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project3/app/util/app_constant.dart';
import 'package:project3/app/views/util/app_colors.dart';
import 'package:project3/app/views/util/app_images.dart';

import 'home_type_categorie_widget.dart';

class HomeOptionsCategorie extends StatelessWidget {
  const HomeOptionsCategorie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeTypeCategories($text1: "Categories"),
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 20),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 70,
                margin: const EdgeInsets.only(top: 20),
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    5,
                    (index) => Container(
                      width: 123,
                      height: double.infinity,
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: ExactAssetImage(Images.imageCategorie)),
                          borderRadius: BorderRadius.circular(8)),
                      child: Opacity(
                        opacity: 0.6,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: LinearGradient(
                              colors: ColorApp.colors.elementAt(
                                  Random().nextInt(ColorApp.colors.length)),
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              names.elementAt(Random().nextInt(names.length)),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
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
