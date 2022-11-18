import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project3/app/controller/event/auth/options_actions.dart';
import 'package:project3/app/controller/bloc/app_bloc.dart';
import 'package:project3/app/model/auth/app_model/options_model.dart';
import 'package:project3/app/views/util/app_images.dart';
import 'package:project3/app/views/util/styles.dart';

import '../../widget/button_app_widget.dart';

class OptionAuthScreen extends StatefulWidget {
  const OptionAuthScreen({super.key});

  @override
  State<OptionAuthScreen> createState() => _OptionAuthScreenState();
}

class _OptionAuthScreenState extends State<OptionAuthScreen> {
  @override
  Widget build(BuildContext context) {
    final oma = OptionModelApp(
      context: context,
      loginIn: () {
        context.read<AppBloc>().add(OptionSignInAction(context: context));
      },
      signUp: () {
        context.read<AppBloc>().add(OptionSignUpAction(context: context));
      },
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Welcome to", style: styleO),
                  Text(
                    "Bolt",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              ),
              const Text(
                "Explore Us",
                style: styleO,
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(Images.imageLogin),
                    fit: BoxFit.contain)),
          ),
          Transform.translate(
            offset: const Offset(0, -30),
            child: Column(
              children: [
                ButtonApp(
                  text: "Login in",
                  w: 0.7,
                  login: oma.loginIn,
                ),
                TextButton(
                    onPressed: oma.signUp,
                    child: const Text(
                      "Signup",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
