import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/components/account_checker.dart';
import 'package:flutter_auth_ui/components/input_textfield.dart';
import 'package:flutter_auth_ui/components/password_textfield.dart';
import 'package:flutter_auth_ui/components/rounded_button.dart';
import 'package:flutter_auth_ui/components/social_icon.dart';
import 'package:flutter_auth_ui/constants.dart';
import 'package:flutter_auth_ui/screens/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  static const String id = 'signup_screen';

  @override
  Widget build(BuildContext context) {
    return const SignupBody();
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
        height: size.height,
        width: double.infinity,
        // use size.width & use double.infinity because both work as a same
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0,
              top: 0,
              width: size.width * 0.35,
              child: Image.asset('assets/signup_top.png'),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              width: size.width * 0.2,
              child: Image.asset('assets/main_bottom.png'),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'signup'.toUpperCase(),
              style: kTextStyle,
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              'assets/signup.png',
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            InputTextField(
              hintText: 'Your email',
              onChanged: (value) {},
            ),
            PassswordTextField(
              hintText: 'Your password',
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'SIGNUP',
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AccountChecker(
              login: false,
              press: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(child: Divider(indent: 70.0, color: kDeepPurpleColor)),
                Text('OR',
                    style: TextStyle(
                        color: kDeepPurpleColor, fontWeight: FontWeight.w600)),
                Expanded(
                    child: Divider(endIndent: 70.0, color: kDeepPurpleColor)),
              ],
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  icon: 'assets/facebook.png',
                  press: () {},
                ),
                SocialIcon(
                  icon: 'assets/google.png',
                  press: () {},
                ),
                SocialIcon(
                  icon: 'assets/twitter.png',
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
