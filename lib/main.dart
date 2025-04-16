import 'package:flutter/material.dart';
import 'package:flutter_application_14/components/AuthScreen.dart';
import 'package:flutter_application_14/components/RegisterScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => AuthScreen(),
        '/register': (context) => RegisterScreen(),
      },
    );
  }
}

