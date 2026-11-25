import 'package:flutter/material.dart';

class SocialLoginSection extends StatelessWidget {

  final Color bodyColor, darkColor, borderColor;

  const SocialLoginSection({
    required this.bodyColor,
    required this.darkColor,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Center(
          child: Text(
            'Or Continue with',
            style: TextStyle(
              color: bodyColor.withOpacity(0.7),
              fontSize: 18,
              fontWeight: .w500
            ),
          )
          ),

        SizedBox(height: 24,),

        Row(
          children: [
            title(
              "google",
              "https://thumb.wikimedia.org/wikipedia/commons/thumb/3/3c/Google_Favicon_2025.svg/960px-Google_Favicon_2025.svg.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail",

              ),
            
            SizedBox(width: 24,),

            title(
              "apple",
              null,
              icon: (Icons.apple))
          ],
        )
      ],
    );
  }


  Widget title(String label, String ? imgUrl, {IconData? icon}){
    return Expanded(
      child: Container(
        height: 58,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: borderColor, width: 1.5),
        ),

        child: Row(
          mainAxisAlignment: .center,
          children: [
            if(imgUrl != null) Image.network(imgUrl, height: 18,)
            else Icon(icon, size: 22, color: darkColor,),

            SizedBox(width: 12,),

            Text(label, style: TextStyle(
              fontWeight: .w700,
              color: darkColor,
              fontSize: 15
            ),)
          ],
        ),
      )
      );
  }
}