import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_input.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double inputWidth = screenWidth * 0.92; // 85% da tela

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              // child: Image.asset(
              //   'assets/logo.png', // Substitua pelo caminho real da sua imagem
              //   height: 100.0,
              // ),
              child: SvgPicture.asset(
                "../../assets/images/logo_header.svg",
                semanticsLabel: 'My SVG Image',
                height: 100,
                width: 70,
              ),
            ),
            CustomInputField(
              labelText: 'Email',
              inputWidth: inputWidth,
            ),
            CustomInputField(
              labelText: 'Senha',
              obscureText: true,
              inputWidth: inputWidth,
            ),
            CustomButton(
              buttonText: "Entrar",
              buttonColor: Colors.blue, // Cor do botão
              onPressed: () {
                // Adicione a lógica de autenticação aqui
              },
            ),
            TextButton(
              onPressed: () {
                // Implemente a função de cadastro aqui
              },
              child: Text('Cadastrar-se'),
            ),
            Divider(
              height: 20.0,
              color: Colors.black,
              thickness: 1.0,
              indent: 16.0,
              endIndent: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}
