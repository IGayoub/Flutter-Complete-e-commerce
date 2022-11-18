import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project3/app/controller/event/auth/back_action.dart';
import 'package:project3/app/controller/event/auth/options_actions.dart';
import 'package:project3/app/controller/event/auth/signup_actions.dart';
import 'package:project3/app/controller/bloc/app_bloc.dart';
import 'package:project3/app/model/auth/app_model/signin_model.dart';
import 'package:project3/app/views/util/util_widget/text_auth.dart';
import 'widget/sign_more_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final controller1 = TextEditingController();
    final controller2 = TextEditingController();
    final mangEvent = SignInModelApp(
        context: context,
        controller1: controller1,
        controller2: controller2,
        loginIn: () {
          context.read<AppBloc>().add(SignInAction(context: context));
        },
        signUp: () {
          context.read<AppBloc>().add(OptionSignUpAction(context: context));
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
          color: const Color(0xffC5CCD6),
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
                    key: globalKey,
                    child: Column(
                      children: [
                        const TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                                color: Color(0xffA6A6A6), fontSize: 17),
                          ),
                        ),
                        const TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              labelText: "Password",
                              labelStyle: TextStyle(
                                  color: Color(0xffA6A6A6), fontSize: 17),
                              suffixIcon: Icon(Icons.remove_red_eye_outlined)),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SignMoreButtons(
                          textSign1: "Log in",
                          ev1: mangEvent.loginIn,
                          textSign2: "Don't have an account",
                          ev2: mangEvent.signUp,
                          textSign3: "Sign Up",
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
