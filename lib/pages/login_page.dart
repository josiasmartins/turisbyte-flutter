import 'package:flutter/material.dart';

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
              child: Image.asset(
                'assets/logo.png', // Substitua pelo caminho real da sua imagem
                height: 100.0,
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
            ElevatedButton(
              onPressed: () {
                // Implemente a função de login aqui
              },
              child: Text('Login'),
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
