import 'package:flutter/material.dart';

class Loginbutton extends StatelessWidget {

  final Color btnColor;
  const Loginbutton({required this.btnColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(16)
          ),

        ),
        onPressed: (){},
        child: Text("Sign In",
        style: TextStyle(fontSize: 16, fontWeight: .w700),)),
    );
  }
}