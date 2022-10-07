import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/components/rounded_button.dart';
import 'package:flutter_auth_ui/constants.dart';
import 'package:flutter_auth_ui/screens/login_screen.dart';
import 'package:flutter_auth_ui/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    return const WelcomeBody();
  }
}

class Background extends StatelessWidget {
  const Background({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Image.asset(
                'assets/main_top.png',
                width: size.width * 0.3,
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset(
                'assets/main_bottom.png',
                width: size.width * 0.2,
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'WELCOME TO EDU',
              style: kTextStyle,
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "assets/chat.png",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
                text: 'LOGIN',
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    LoginScreen.id,
                  );
                }),
            RoundedButton(
                text: 'SIGNUP',
                color: kPrimaryLightColor,
                textColor: kDeepPurpleColor,
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    SignupScreen.id,
                  );
                }),
          ],
        ),
      ),
    );
  }
}
