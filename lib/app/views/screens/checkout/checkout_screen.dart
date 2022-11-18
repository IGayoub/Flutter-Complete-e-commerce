import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project3/app/views/util/app_colors.dart';
import 'package:project3/app/views/util/util_widget/text_auth.dart';
import 'package:project3/app/views/screens/address/widget/card_address.dart';
import 'package:project3/app/views/widget/button_app_widget.dart';
import 'package:project3/app/views/screens/checkout/widget/card_checkout.dart';
import 'package:project3/app/views/screens/payment/widget/card_details_payments.dart';
import 'package:project3/app/views/widget/notification_appbar_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

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
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Util.$textAuth("Checkout"),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      children: List.generate(
                        2,
                        (index) => const CardCheckout(),
                      ),
                    ),
                  ),
                  const CardAddress(),
                  const CardDetailsPayment(),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: ButtonApp(
                text: "Buy",
                w: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
