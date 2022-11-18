import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project3/app/views/util/app_colors.dart';
import 'package:project3/app/views/util/util_widget/text_auth.dart';
import 'package:project3/app/views/screens/address/widget/card_address.dart';
import 'package:project3/app/views/widget/button_choses_widget.dart';
import 'package:project3/app/views/widget/notification_appbar_widget.dart';

class AddreesPayment extends StatelessWidget {
  const AddreesPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.arrowLeft),
          color: ColorApp.grey,
        ),
        actions: const [NotificationsAppBar()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Util.$textAuth("Address"),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: List.generate(
                      2,
                      (index) {
                        return CardAddress(
                          index: index,
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            const ButtonChoses(
                nameBtn1: "Add Address", nameBtn2: "Continue To Paymant")
          ],
        ),
      ),
    );
  }
}
