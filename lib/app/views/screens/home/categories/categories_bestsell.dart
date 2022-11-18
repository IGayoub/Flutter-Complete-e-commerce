import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project3/app/views/util/app_colors.dart';
import 'package:project3/app/views/util/app_images.dart';
import 'package:project3/app/views/util/util_widget/text_auth.dart';
import 'package:project3/app/views/screens/home/widget/card_feautred.dart';
import 'package:project3/app/views/widget/notification_appbar_widget.dart';

class CategorieBestSell extends StatelessWidget {
  const CategorieBestSell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(FontAwesomeIcons.arrowLeft),
          color: ColorApp.grey,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: Colors.grey,
          ),
          const NotificationsAppBar(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Util.$textAuth("Best Sell"),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  10,
                  (index) => SizedBox(
                    height: 400,
                    child: CardFeautred(
                      image: Images.$images2,
                      index: Random().nextInt(Images.$images2.length),
                      noRight: true,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
