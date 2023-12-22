import 'package:flutter/material.dart';

import 'colors.dart';

class LogoGrey extends StatelessWidget {
  LogoGrey({
    super.key,
  });
  var ty = "end";
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          "images/white.png",
          height: 25,
        ),
        RichText(
          text: TextSpan(
            text: "Thanzi",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: thanziBlue, fontSize: 20),
            children: [
              TextSpan(
                text: "Langa+",
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    color: thanziBlue,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
