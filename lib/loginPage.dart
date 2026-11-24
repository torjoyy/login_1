import 'dart:ui';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //
  bool _isloading = false;
  bool _isPasswordVisible = false;

  //Color define
  final Color _primaryColor = const Color(0xff4f46e5);//brand color
  final Color _darkTextColor = const Color(0xff0f172a);//text color-dark
  final Color _bodyTextColor = const Color(0xff475569);//text color-light
  final Color _borderColor = const Color(0xffe2e8f0);//border color
  final Color _bgLight = const Color(0xfff8fafc);//main background color
  

  //main
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _bgLight,
      body: Stack(
        children: [
          _Backgrounddecoration(color: _primaryColor)
        ],
      ),
    );
  }
}

  //circle
class _Backgrounddecoration extends StatefulWidget {

  final Color color;
  const _Backgrounddecoration({required this.color});

  @override
  State<_Backgrounddecoration> createState() => _BackgrounddecorationState();
}

class _BackgrounddecorationState extends State<_Backgrounddecoration> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Positioned(
          top: -60,
          left: -60,
          child: _blob(280, widget.color.withOpacity(0.08))
          ),

        Positioned(
          bottom: -80,
          right: -60,
          child: _blob(280, widget.color.withOpacity(0.08))
          ),
        
      ],
    );
  }

  //circle design
  Widget _blob(double size, Color color) => Container(
    width: size, height: size, decoration: BoxDecoration(shape: BoxShape.circle, color: color),
  );
}