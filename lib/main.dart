import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:foodapp/screens/IntroScreen.dart';
import 'package:foodapp/screens/MainScreen.dart';
import 'package:foodapp/screens/auth/LoginScreen.dart';
import 'package:foodapp/screens/auth/RegisterScreen.dart';
import 'package:foodapp/screens/foodseprate.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const IntroScreen(),
        '/register': (context) => const RegisterScreen(),
        '/login': (context) => const LoginScreen(),
        '/main': (context) => const MainScreen(),
      },
    );
  }
}
