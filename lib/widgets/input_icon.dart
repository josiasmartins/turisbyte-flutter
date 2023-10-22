import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputWithIcon extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final double inputWidth;
  final String? svgIcon; // SVG a ser exibido no final do campo

  InputWithIcon({
    required this.labelText,
    this.obscureText = false,
    required this.inputWidth,
    this.svgIcon, // Recebe o SVG opcional
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: inputWidth,
      padding: EdgeInsets.all(10),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          filled: true,
          fillColor: Color(0xFFF1F5F4), // Cor F1F5F4
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(31.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(31.0),
            borderSide: BorderSide.none,
          ),
          suffixIcon: svgIcon != null
              ? Padding(
                  padding: EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    svgIcon!,
                    width: 24, // Ajuste o tamanho do ícone conforme necessário
                  ),
                ) // Exibe o ícone SVG se ele for fornecido
              : null, // Se nenhum ícone for fornecido, não exibe nada
        ),
      ),
    );
  }
}
