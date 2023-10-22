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
      body: Center(
        // child: Text('Conteúdo da Página Inicial'),
        child:  InputsWidget(
          inputData: [
            InputData(icon: Icons.person, hintText: 'Nome', additionalText: '5km'),
            InputData(icon: Icons.email, hintText: 'Email', additionalText: '5km'),
            InputData(icon: Icons.phone, hintText: 'Telefone', additionalText: '5km'),
            InputData(icon: Icons.location_on, hintText: 'Endereço', additionalText: '5km'),
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
