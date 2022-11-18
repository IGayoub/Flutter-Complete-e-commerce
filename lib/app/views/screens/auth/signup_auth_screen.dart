import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project3/app/controller/event/auth/back_action.dart';
import 'package:project3/app/controller/event/auth/options_actions.dart';
import 'package:project3/app/controller/event/auth/signup_actions.dart';
import 'package:project3/app/controller/bloc/app_bloc.dart';
import 'package:project3/app/model/auth/app_model/signup_model.dart';
import 'package:project3/app/views/util/app_colors.dart';
import 'package:project3/app/views/util/styles.dart';
import 'package:project3/app/views/util/util_widget/text_auth.dart';
import 'package:project3/app/views/screens/auth/widget/sign_more_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final globalkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final controller1 = TextEditingController();
    final controller2 = TextEditingController();
    final controller3 = TextEditingController();
    final mangEvent = SignUpModelApp(
        context: context,
        controller1: controller1,
        controller2: controller2,
        controller3: controller3,
        signIn: () {
          context.read<AppBloc>()
                  .add(OptionSignInAction(context: context));
        },
        signUp: () {
            context.read<AppBloc>()
                  .add(SignInAction(context: context));
            });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            context.read<AppBloc>().add(BackAction(context: context));
          },
          icon: const Icon(FontAwesomeIcons.arrowLeft),
          color: ColorApp.grey,
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Util.$textAuth("Login"),
                const SizedBox(
                  height: 40,
                ),
                Form(
                    key: globalkey,
                    child: Column(
                      children: [
                        const TextField(
                          style: styleTf,
                          decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: styleLabelTf,
                          ),
                        ),
                        const TextField(
                          style: styleTf,
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: styleLabelTf,
                          ),
                        ),
                        const TextField(
                          style: styleTf,
                          decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: styleLabelTf,
                              suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SignMoreButtons(
                          textSign1: "Sign Up",
                          ev1: mangEvent.signUp,
                          textSign2: "Already have an account",
                          ev2: mangEvent.signIn,
                          textSign3: "Sign in",
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
