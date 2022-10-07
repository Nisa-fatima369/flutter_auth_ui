import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/screens/welcome_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const AuthUI());
}

class AuthUI extends StatelessWidget {
  const AuthUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignupScreen.id: (context) => const SignupScreen(),
      },
    );
  }
}


// 27 09 2022 - 03 10 2022  just ui without responsiveness nd authentication