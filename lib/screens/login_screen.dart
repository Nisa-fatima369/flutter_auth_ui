import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/components/input_textfield.dart';
import 'package:flutter_auth_ui/components/password_textfield.dart';
import 'package:flutter_auth_ui/components/rounded_button.dart';
import 'package:flutter_auth_ui/constants.dart';
import 'package:flutter_auth_ui/components/account_checker.dart';
import 'package:flutter_auth_ui/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  static const String id = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return const LoginBody();
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
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0,
              top: 0,
              width: size.width * 0.35,
              child: Image.asset('assets/main_top.png'),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              width: size.width * 0.3,
              child: Image.asset('assets/login_bottom.png'),
            ),
            child,
          ],
        ),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'LOGIN',
              style: kTextStyle,
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              'assets/login.png',
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            InputTextField(
              hintText: 'Your email',
              onChanged: (value) {},
            ),
            PassswordTextField(
              hintText: 'Your Password',
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'LOGIN',
              textColor: Colors.white,
              onPressed: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AccountChecker(press: () {
              Navigator.pushNamed(context, SignupScreen.id);
            }),
          ],
        ),
      ),
    );
  }
}
