import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project3/app/controller/bloc/app_bloc.dart';
import 'package:project3/app/views/util/app_colors.dart';
import 'package:project3/app/views/util/util_widget/text_auth.dart';
import 'package:project3/app/views/widget/button_app_widget.dart';
import 'package:project3/app/views/widget/notification_appbar_widget.dart';

import 'widget/card_checkout.dart';

class CartCheckoutScreen extends StatelessWidget {
  const CartCheckoutScreen({super.key});

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
        actions: const [NotificationsAppBar()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Util.$textAuth("Cart"),
                Expanded(
                  child: ListView(
                      scrollDirection: Axis.vertical,
                      children: List.generate(
                        10,
                        (index) => const CardCheckout(),
                      )),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: ButtonApp(
                text: "Continue",
                w: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
