import 'package:flutter/material.dart';

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
            Container(
              width: 300.0, // 75% da tela
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  filled: true,
                  fillColor: Color(0xFFF1F5F4), // Cor F1F5F4
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(31.0),
                    borderSide: BorderSide.none, // Nenhuma borda
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(31.0),
                    borderSide: BorderSide.none, // Nenhuma borda
                  ),
                ),
              ),
            ),
            Container(
              width: 300.0, // 75% da tela
              padding: EdgeInsets.all(16.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  filled: true,
                  fillColor: Color(0xFFF1F5F4), // Cor F1F5F4
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(31.0),
                    borderSide: BorderSide.none, // Nenhuma borda
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(31.0),
                    borderSide: BorderSide.none, // Nenhuma borda
                  ),
                ),
              ),
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
