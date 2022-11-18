import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project3/app/controller/bloc/app_bloc.dart';
import 'package:project3/app/views/screens/auth/options_auth_screen.dart';
import 'package:project3/app/views/screens/auth/signin_auth_screen.dart';
import 'package:project3/app/views/screens/auth/signup_auth_screen.dart';
import 'package:project3/app/views/screens/home/home_screen.dart';
import 'package:project3/app/views/screens/start_screen.dart';
import 'package:project3/app/views/util/theme/theme_light.dart';

void main() {
  runApp(const BoltApp());
}

class BoltApp extends StatelessWidget {
  const BoltApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp
    ]);
    return BlocProvider(
      create: (context) => AppBloc(),
      child: MaterialApp(
        theme: themeLight,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (_) => const StartAppScreen(),
          '/optionAuth': (_) => const OptionAuthScreen(),
          '/signInscr': (_) => const SignInScreen(),
          '/signUpscr': (_) => const SignUpScreen(),
          '/home': (_) => const HomeScreen(),
        },
      ),
    );
  }
}

class MarketApp extends StatelessWidget {
  const MarketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MarketApp'),
      ),
      body: Container(),
    );
  }
}
