import 'package:flutter/material.dart';

import '../models/input_model.dart';
import '../widgets/inputs.dart';

class UserRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home'),
      // ),
      body: SafeArea(
        // child: Text('Conteúdo da Página Inicial'),
        child:  InputsWidget(
          inputData: [
            InputData(icon: Icons.person, hintText: 'Nome'),
            InputData(icon: Icons.email, hintText: 'Sobrenome', additionalText: '5km'),
            InputData(icon: Icons.phone, hintText: 'Nascimento', additionalText: '5km'),
            InputData(icon: Icons.location_on, hintText: 'Email', additionalText: '5km'),
            InputData(icon: Icons.location_on, hintText: 'Senha', additionalText: '5km'),
            InputData(icon: Icons.location_on, hintText: 'Pais', additionalText: '5km'),
            InputData(icon: Icons.location_on, hintText: 'Estado', additionalText: '5km'),
            InputData(icon: Icons.location_on, hintText: 'Cidade', additionalText: '5km'),
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Pesquisa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}
