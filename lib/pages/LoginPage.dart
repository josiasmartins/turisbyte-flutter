import 'package:flutter/material.dart';
import 'package:turisbyte/pages/user_registration.dart';

import '../widgets/button_animed.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  // Função para navegar para a tela "Home"
  void navigateToHome() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

    void navigateToUSerRegistration() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => UserRegistration()),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, insira um email.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Senha',
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Por favor, insira uma senha.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value!;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        // Simule uma autenticação bem-sucedida (substitua por sua lógica de autenticação real).
                        final authenticated = true;
                        if (authenticated) {
                          navigateToHome(); // Navega para a tela Home após a autenticação bem-sucedida.
                        }
                      }
                    },
                    child: Text('Entrar'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedRoundButton(buttonText: "Cadastrar usuario", onPressed: () => { navigateToUSerRegistration() }, ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Sua classe HomePage continua a mesma como mostrada em respostas anteriores.
