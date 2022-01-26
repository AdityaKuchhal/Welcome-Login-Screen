import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreen/social_card.dart';

import 'constants.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset("assets/images/loginbg.jpg"),
          Container(
            color: Colors.black.withOpacity(.35),
            height: screenHeight,
            width: screenWidth,
          ),
          Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: kToolbarHeight * 1.2),
                  child: Text(
                    'Welcome back',
                    style: TextStyle(
                      color: kWhite,
                      fontFamily: 'Nunito',
                      fontSize: screenHeight / 22,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                      letterSpacing: 1.4,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight / 90),
                  child: Text(
                    'Continue with your details',
                    style: TextStyle(
                      color: kWhite,
                      fontSize: screenHeight / 50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            transform: Matrix4.translationValues(0, kToolbarHeight * 4, 1),
            width: screenWidth,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
              ),
            ),
            child: ListView(
              clipBehavior: Clip.antiAlias,
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenHeight / 30,
                    vertical: screenHeight / 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: screenHeight / 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Container(
                        height: screenHeight / 200,
                        width: screenHeight / 10.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(249, 168, 37, .6),
                              Color.fromRGBO(249, 168, 37, 1),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 30,
                ),
                loginForm(screenHeight, context),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Row(
                    children: const [
                      Expanded(
                        flex: 3,
                        child: Divider(
                          color: kDarkGrey,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Text(
                            'OR',
                            style: TextStyle(color: kBlack),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Divider(
                          color: kDarkGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: screenWidth / 3.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SocialCard(
                        icon: 'assets/icons/google-icon.svg',
                        press: () {},
                      ),
                      SocialCard(
                        icon: 'assets/icons/facebook-2.svg',
                        press: () {},
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight / 19,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignupScreen.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account? ",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 25,
                          color: kGrey,
                        ),
                      ),
                      Text(
                        " Create Account",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 25,
                          color: kBlack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget loginForm(double screenHeight, BuildContext context) {
  return Form(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(52, 63, 86, .2),
                  blurRadius: 20,
                  offset: Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: kLightGrey,
                      ),
                    ),
                  ),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Email',
                      labelStyle: const TextStyle(
                        fontFamily: 'Montserrat',
                        color: kDarkGrey,
                      ),
                      hintText: 'Enter your Email',
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey[400],
                      ),
                      prefixIcon: const Icon(
                        CupertinoIcons.mail,
                        color: kDarkGrey,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextFormField(
                    obscureText: true,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                        fontFamily: 'Montserrat',
                        color: kDarkGrey,
                      ),
                      hintText: 'Enter your Password',
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey[400],
                      ),
                      prefixIcon: const Icon(
                        CupertinoIcons.lock,
                        color: kDarkGrey,
                      ),
                      suffixIcon: IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: const Icon(
                          Icons.visibility_off,
                          color: kDarkGrey,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight / 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(52, 63, 86, .2),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(249, 168, 37, .8),
                      Color.fromRGBO(249, 168, 37, 1),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: screenHeight / 45,
                      fontWeight: FontWeight.bold,
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight / 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: InkWell(
              onTap: () {},
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Color.fromRGBO(52, 63, 86, .7),
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
