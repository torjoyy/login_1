import 'package:flutter/material.dart';


  //box shape circle
class Backgrounddecoration extends StatefulWidget {

  final Color color;
  const Backgrounddecoration({required this.color});

  @override
  State<Backgrounddecoration> createState() => BackgrounddecorationState();
}

class BackgrounddecorationState extends State<Backgrounddecoration> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Positioned(
          top: -60,
          left: -60,
          child: blob(280, widget.color.withOpacity(0.08))
          ),

        Positioned(
          bottom: -80,
          right: -60,
          child: blob(280, widget.color.withOpacity(0.08))
          ),
        
      ],
    );
  }

  //circle design
  Widget blob(double size, Color color) => Container(
    width: size, height: size, decoration: BoxDecoration(shape: BoxShape.circle, color: color),
  );
}
