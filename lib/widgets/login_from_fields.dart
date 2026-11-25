import 'package:flutter/material.dart';


//login form fields
class LoginFromFields extends StatelessWidget {

  final Color primaryColor, darkColor, bodyColor, borderColor;
  final bool isPasswordVisible;

  const LoginFromFields({
    required this.primaryColor,
    required this.darkColor,
    required this.bodyColor,
    required this.borderColor,
    required this.isPasswordVisible,
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        label("Email address"),
        inputField(Icons.mail_outline_outlined, "Enter your email"),

        SizedBox(height: 12,),
        
        label("Password"),
        inputField(Icons.lock_open_rounded, "Enter your password",
        isPassword: true, suffix: IconButton(onPressed: (){}, icon: Icon(isPasswordVisible ? Icons.visibility_rounded : Icons.visibility_off_rounded,
        size: 20, color: bodyColor,))),
      ],
    );
  }


  //label design
  Widget label(String text) => Padding(
    padding: EdgeInsetsGeometry.only(bottom: 10, left: 4),
    child: Text(text, style: TextStyle(fontSize: 12, fontWeight: .w700,
    color: bodyColor.withOpacity(0.8), letterSpacing: 1.2),),
    );

  //input field
  Widget inputField(
    IconData icon, String hint, {bool isPassword = false, Widget ? suffix}){
    return Container(

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: borderColor, width: 1.5),
        boxShadow: [
          BoxShadow(
            color: darkColor.withOpacity(0.03),
            blurRadius: 10,
            offset: Offset(0, 4)

          )
        ]
      ),
      
      child: TextField(
        obscureText: isPassword && !isPasswordVisible,
        style: TextStyle(color: darkColor, fontWeight: .w400),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: bodyColor.withOpacity(0.4), fontSize: 15),
          prefixIcon: Icon(icon, color: primaryColor, size: 22,),
          suffixIcon: suffix,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 18)
        ),
      ),
    );
  }
}