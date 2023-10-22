import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final IconData iconData;
  final String text;
  final double iconSize;
  final Color iconColor;
  final double textSize;

  IconWithText({
    required this.iconData,
    required this.text,
    this.iconSize = 24.0,
    this.iconColor = Colors.black,
    this.textSize = 20.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 22.0), // Margem à esquerda do ícone
          child: Icon(
            iconData,
            size: iconSize,
            color: iconColor,
          ),
        ),
        SizedBox(width: 10.0), // Espaço entre o ícone e o texto
        Text(
          text,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
