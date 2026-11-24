import 'package:flutter/material.dart';

import 'dart:ui';

import 'package:signup_login_1/widgets/backgrounddecoration.dart';
import 'package:signup_login_1/widgets/login_from_fields.dart';
import 'package:signup_login_1/widgets/loginheader.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  //
  bool isloading = false;
  bool isPasswordVisible = false;

  //Color define
  final Color primaryColor = const Color(0xff4f46e5);//brand color
  final Color darkTextColor = const Color(0xff0f172a);//text color-dark
  final Color bodyTextColor = const Color(0xff475569);//text color-light
  final Color borderColor = const Color(0xffe2e8f0);//border color
  final Color bgLight = const Color(0xfff8fafc);//main background color
  

  //main
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLight,
      body: Stack(
        children: [

          //blob class added here
          Backgrounddecoration(color: primaryColor),


          SafeArea(
            child: Column(
              children: [
                Expanded(child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 28
                  ),
                  child: Column(
                    children: [
                      loginHeader(darkColor: darkTextColor, bodyColor: bodyTextColor),
                      SizedBox(height: 48,),
                      LoginFromFields(
                        bodyColor: bodyTextColor,
                        primaryColor: primaryColor,
                        darkColor: darkTextColor,
                        borderColor: borderColor,
                        isPasswordVisible: isPasswordVisible,)
                    ],
                  ),
                ))
              ],
            )
            )
        ],
      ),
    );
  }
}

