import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreen/constants.dart';
import 'package:loginscreen/login_screen.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'SignupScreen';
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset("assets/images/signupbg.jpg"),
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
                    'Register',
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
                    'Complete your details to Continue',
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
            transform: Matrix4.translationValues(0, kToolbarHeight * 3.6, 1),
            width: screenWidth,
            decoration: const BoxDecoration(
              color: kWhite,
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
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Nunito',
                          fontSize: screenHeight / 35,
                          fontWeight: FontWeight.w600,
                          color: kBlack,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Container(
                        height: screenHeight / 200,
                        width: screenHeight / 9,
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
                  height: screenHeight / 50,
                ),
                signupForm(screenHeight, context),
                SizedBox(
                  height: screenHeight / 35,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Already Have an Account? ",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 25,
                          color: kGrey,
                        ),
                      ),
                      Text(
                        " Login",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 25,
                          color: kBlack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: screenHeight / 13,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'By continuing, you agree to our',
                        style: TextStyle(
                          color: kGrey,
                          fontFamily: 'Monserrat',
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Terms of Service',
                            style: TextStyle(
                              color: kDarkYellow,
                              fontFamily: 'Monserrat',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 150,
                              width: MediaQuery.of(context).size.height / 150,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: kGrey,
                              ),
                            ),
                          ),
                          const Text(
                            'Privacy Policy',
                            style: TextStyle(
                              color: kDarkYellow,
                              fontFamily: 'Monserrat',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 150,
                              width: MediaQuery.of(context).size.height / 150,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: kGrey,
                              ),
                            ),
                          ),
                          const Text(
                            'Content Policy',
                            style: TextStyle(
                              color: kDarkYellow,
                              fontFamily: 'Monserrat',
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget signupForm(double screenHeight, BuildContext context) {
  return Form(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: kWhite,
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
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Full Name',
                      labelStyle: const TextStyle(
                        fontFamily: 'Montserrat',
                        color: kDarkGrey,
                      ),
                      hintText: 'Enter your Name',
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey[400],
                      ),
                      prefixIcon: const Icon(
                        CommunityMaterialIcons.account_outline,
                        color: kDarkGrey,
                      ),
                    ),
                  ),
                ),
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
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: kLightGrey,
                      ),
                    ),
                  ),
                  child: TextFormField(
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
                          onPressed: () {}),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  child: TextFormField(
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Confirm Password',
                      labelStyle: const TextStyle(
                        fontFamily: 'Montserrat',
                        color: kDarkGrey,
                      ),
                      hintText: 'Re-enter your Password',
                      hintStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey[400],
                      ),
                      prefixIcon: const Icon(
                        CupertinoIcons.lock_shield,
                        color: kDarkGrey,
                      ),
                      suffixIcon: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          icon: const Icon(
                            Icons.visibility_off,
                            color: kDarkGrey,
                          ),
                          onPressed: () {}),
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
                    'Create Account',
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
        ],
      ),
    ),
  );
}
