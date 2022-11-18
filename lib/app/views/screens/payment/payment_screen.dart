import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project3/app/views/util/app_colors.dart';
import 'package:project3/app/views/util/app_images.dart';
import 'package:project3/app/views/util/util_widget/text_auth.dart';
import 'package:project3/app/views/screens/payment/widget/card_details_payments.dart';
import 'package:project3/app/views/widget/button_choses_widget.dart';
import 'package:project3/app/views/widget/notification_appbar_widget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
      body: Stack(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Util.$textAuth("Payment"),
              ),
              SizedBox(
                height: 190,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 190,
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: ExactAssetImage(Images.visaCard),
                          fit: BoxFit.contain),
                    ),
                  ),
                ),
              ),
              const CardDetailsPayment()
            ],
          ),
          const ButtonChoses(nameBtn1: "Add Address", nameBtn2: "Checkout"),
        ],
      ),
    );
  }
}
