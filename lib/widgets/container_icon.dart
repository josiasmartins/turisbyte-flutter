import 'package:flutter/material.dart';

class ContainerWithIcon extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final Color color;
  final IconData icon;
  final String text; // Novo parâmetro para o texto
  final Function onTap;

  ContainerWithIcon({
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.color,
    required this.icon,
    required this.text, // Adicionado para receber o texto
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 48, // Tamanho do ícone
                color: Colors.black, // Cor do ícone
              ),
            ),
          ),
          SizedBox(height: 10.0), // Espaço entre o ícone e o texto
          Text(
            text,
            style: TextStyle(
              fontSize: 16, // Tamanho do texto
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
