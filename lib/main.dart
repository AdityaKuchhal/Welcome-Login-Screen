import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginscreen/login_screen.dart';
import 'package:loginscreen/signup_screen.dart';
import 'package:loginscreen/welcome_screen.dart';

void main() {
  runApp(const Plantify());
}

class Plantify extends StatelessWidget {
  const Plantify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignupScreen.id: (context) => const SignupScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
