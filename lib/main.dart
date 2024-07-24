import 'package:flutter/material.dart';
import 'package:login_page/pages/login_page.dart';
import 'package:login_page/pages/register_page.dart';
import 'package:login_page/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: lightmode,
      routes: {
        "/registerpage": (context) => Registerpage(),
        "/loginpage": (context) => LoginPage()
      },
    );
  }
}
