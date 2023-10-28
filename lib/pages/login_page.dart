import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turisbyte/pages/home_page.dart';
import 'package:turisbyte/pages/students_page.dart';

import 'package:library_teimosinhos/widgets/tut_input_field.dart';
import 'package:turisbyte/pages/user_registration.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';

import 'package:library_teimosinhos/utils/hex_color_util.dart';

import 'package:library_teimosinhos/widgets/tut_button.dart';

class LoginPage extends StatelessWidget {
  // Color hexToColor(String code) {
  //   // Remove o caractere '#' (se presente)
  //   if (code[0] == '#') {
  //     code = code.substring(1);
  //   }

  //   // Adiciona um valor alpha de 255 (0xFF) e converte para inteiro
  //   int colorInt = int.parse(code, radix: 16) + 0xFF000000;

  //   // Cria e retorna o objeto Color
  //   return Color(colorInt);
  // }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double inputWidth = screenWidth * 0.92; // 85% da tela

    void navigateToUserRegistration() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return UserRegistrationPage();
      }));
    }

    void navigateToStudents() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return StudentsPage();
      }));
    }

    void navigateToHome() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return HomePage();
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
              TutInputField(
                labelText: 'Email',
                obscureText: false,
                inputWidth: inputWidth,
              ),
              CustomInputField(
                labelText: 'Senha',
                obscureText: true,
                inputWidth: inputWidth,
              ),
              SizedBox(height: 80.0),
              TutButton(
                buttonText: "Entrar",
                buttonColor: HexColor.hexToColor("#dbead5"), // Cor do botão
                onPressed: () {
                  navigateToHome();
                },
              ),
              SizedBox(height: 20.0),
              CustomButton(
                buttonText: "Cadastrar-se",
                buttonColor: Colors.black, // Cor do botão
                onPressed: () {
                  navigateToUserRegistration();
                },
              ),
              SizedBox(height: 40.0),
              Divider(
                height: 20.0,
                color: HexColor.hexToColor("#ECECEC"),
                thickness: 6.0, // Espessura da linha
                indent:
                    30.0, // Aumente este valor para mover a linha para a direita
                endIndent:
                    30.0, // Aumente este valor para mover a linha para a esquerda
              ),
              TutButton(
                buttonText: "lista estudantes",
                buttonColor: HexColor.hexToColor("#b102ff"), // Cor do botão
                onPressed: () {
                  navigateToStudents();
                  print("students");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
