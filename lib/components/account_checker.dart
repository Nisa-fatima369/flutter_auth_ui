import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/constants.dart';

class AccountChecker extends StatelessWidget {
  const AccountChecker({super.key, this.login = true, required this.press});

  final bool login;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have an Account ? " : "Already have an Account ? ",
          style: const TextStyle(
            color: kDeepPurpleColor,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Signup" : 'Login',
            style: const TextStyle(
              color: kDeepPurpleColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
