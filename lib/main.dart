import 'package:flutter/material.dart';
import 'package:signup_login_1/auth/pages/loginPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Inter',
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
