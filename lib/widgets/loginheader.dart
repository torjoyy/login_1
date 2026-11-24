import 'package:flutter/material.dart';


//login header
class loginHeader extends StatelessWidget {

  final Color darkColor, bodyColor;
  const loginHeader({required this.darkColor, required this.bodyColor});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(height: 70,),
        Text('Welcome back', style: TextStyle(fontSize: 34, fontWeight: .w800, 
              color: darkColor, letterSpacing: -0.5),),

        Text('Enter your credential to access your account', style: TextStyle(fontSize: 18, 
              color: bodyColor, height: 1.5),)
      ],
    );
  }
}
