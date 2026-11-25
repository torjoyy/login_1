import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {

  final Color primaryColor, bodyColor;

  const FooterSection({
    required this.primaryColor,
    required this.bodyColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        Text(
          'New here?',
          style: TextStyle(color: bodyColor),
        ),

        TextButton(
          onPressed: (){},
          child: Text(
            'Create an account',
            style: TextStyle(
              color: primaryColor,
              fontWeight: .w700
            ),
          )
          )
      ],
    );
  }
}