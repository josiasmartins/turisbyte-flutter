// ...

import 'package:flutter/material.dart';

import '../widgets/container_icon.dart';
import '../widgets/custom_button.dart';
import '../widgets/input_icon.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  // ... Seu código existente

  Color hexToColor(String code) {
    // Remove o caractere '#' (se presente)
    if (code[0] == '#') {
      code = code.substring(1);
    }

    // Adiciona um valor alpha de 255 (0xFF) e converte para inteiro
    int colorInt = int.parse(code, radix: 16) + 0xFF000000;

    // Cria e retorna o objeto Color
    return Color(colorInt);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double inputWidth = screenWidth * 0.92;

    void navigateToLogin() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return LoginPage();
      }));
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(
                height: 38.0,
                color: hexToColor("#ECECEC"),
                thickness: 3.0,
                indent: 30.0,
                endIndent: 30.0,
              ),
              SizedBox(height: 40),
              InputWithIcon(
                labelText: 'Email',
                inputWidth: inputWidth,
                svgIcon:
                    "assets/images/map_icon.svg", // Corrija o caminho para o ícone SVG
              ),
              ContainerWithIcon(
                width: 110.727,
                height: 106.773,
                borderRadius: 17.0,
                color: Color(0xFFF1F5F4),
                icon: Icons.home,
                text: "Comer e beber",
                onTap: () {
                  print('Retângulo tocado!');
                },
              ),
              ContainerWithIcon(
                width: 110.727,
                height: 106.773,
                borderRadius: 17.0,
                color: Color(0xFFF1F5F4),
                icon: Icons.home,
                text: "Passear",
                onTap: () {
                  print('Retângulo tocado!');
                },
              ),
              ContainerWithIcon(
                width: 110.727,
                height: 106.773,
                borderRadius: 17.0,
                color: Color(0xFFF1F5F4),
                icon: Icons.home,
                text: "Visitar",
                onTap: () {
                  print('Retângulo tocado!');
                },
              ),
              ContainerWithIcon(
                width: 110.727,
                height: 106.773,
                borderRadius: 17.0,
                color: Color(0xFFF1F5F4),
                icon: Icons.home,
                text: "Hospedar",
                onTap: () {
                  print('Retângulo tocado!');
                },
              ),
              SizedBox(height: 100),
              CustomButton(
                buttonText: "Login",
                buttonColor: hexToColor("#FD0101"),
                onPressed: () {
                  navigateToLogin();
                },
              ),
              SizedBox(height: 40.0),
              Divider(
                height: 20.0,
                color: hexToColor("#ECECEC"),
                thickness: 6.0,
                indent: 30.0,
                endIndent: 30.0,
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}

// ...
