import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project3/app/views/util/app_colors.dart';
import 'package:project3/app/views/util/styles.dart';
import 'package:project3/app/views/util/util_widget/text_auth.dart';
import 'package:project3/app/views/widget/button_app_widget.dart';
import 'package:project3/app/views/widget/notification_appbar_widget.dart';

class CreateAddress extends StatelessWidget {
  const CreateAddress({super.key});

  @override
  Widget build(BuildContext context) {
    final globalKey = GlobalKey<FormState>();
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Util.$textAuth("Create Address"),
                    const SizedBox(
                      height: 40,
                    ),
                    Form(
                        key: globalKey,
                        child: Column(
                          children: const[
                            TextField(
                              style: styleTf,
                              decoration: InputDecoration(
                                  labelText: "Name", labelStyle: styleLabelTf),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              style: styleTf,
                              decoration: InputDecoration(
                                labelText: "Address lane",
                                labelStyle: styleLabelTf,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              style: styleTf,
                              decoration: InputDecoration(
                                labelText: "City",
                                labelStyle: styleLabelTf,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              style: styleTf,
                              decoration: InputDecoration(
                                labelText: "Postal Code",
                                labelStyle: styleLabelTf,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextField(
                              style: styleTf,
                              decoration: InputDecoration(
                                labelText: "Phone Number",
                                labelStyle: styleLabelTf,
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              child: ButtonApp(
                text: "Add Address",
                w: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
