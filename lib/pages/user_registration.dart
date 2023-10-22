import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turisbyte/pages/home_page.dart';
import 'package:turisbyte/pages/user_registration.dart';

import '../widgets/container_icon.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';
import 'login_page.dart';

class UserRegistrationPage extends StatelessWidget {
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
    double inputWidth = screenWidth * 0.92; // 85% da tela

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
              Container(
                padding: EdgeInsets.all(16.0),
                child: SvgPicture.asset(
                  "assets/images/logo_header.svg",
                  semanticsLabel: 'My SVG Image',
                  height: 100,
                  width: 70,
                ),
              ),
              CustomInputField(
                labelText: 'Nome',
                inputWidth: inputWidth,
              ),
              CustomInputField(
                labelText: 'Sobrenome',
                obscureText: true,
                inputWidth: inputWidth,
              ),
              CustomInputField(
                labelText: 'Atividade',
                inputWidth: inputWidth,
              ),
              CustomInputField(
                labelText: 'Bairro',
                obscureText: true,
                inputWidth: inputWidth,
              ),
              CustomInputField(
                labelText: 'Email',
                inputWidth: inputWidth,
              ),
              CustomInputField(
                labelText: 'Telefone',
                obscureText: true,
                inputWidth: inputWidth,
              ),
              SizedBox(height: 78.0),
              CustomButton(
                buttonText: "Login",
                buttonColor: hexToColor("#FD0101"), // Cor do botão
                onPressed: () {
                  navigateToLogin();
                },
              ),
              SizedBox(height: 40.0),
              Divider(
                height: 20.0,
                color: hexToColor("#ECECEC"),
                thickness: 6.0, // Espessura da linha
                indent: 30.0, // Aumente este valor para mover a linha para a direita
                endIndent: 30.0, // Aumente este valor para mover a linha para a esquerda
              ),
               SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
