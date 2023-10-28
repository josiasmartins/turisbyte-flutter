import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:library_teimosinhos/http/tut_http_service.dart';
import 'package:library_teimosinhos/utils/hex_color_util.dart';

import '../models/students_model.dart';
import '../widgets/custom_input.dart';
import 'login_page.dart';

class StudentsPage extends StatelessWidget {
  // final studentService = GenericHttpService<Student>(
  //     'http://localhost:4001',
  //     Student(
  //         id: 0,
  //         idade: '',
  //         notaPrimeiroSemestre: '',
  //         nome: '',
  //         nomeProfessor: '',
  //         notaSegundoSemestre: '',
  //         numeroDaSala: 1));

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
              Card(
                elevation: 4,
                margin: EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FutureBuilder(
                    // future: studentService.fetchAll("students"),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                        return Text('Erro: ${snapshot.error}');
                      } else {
                        final listStudents = List.of({
                          Student(
                              id: 0,
                              idade: '32',
                              notaPrimeiroSemestre: '3.8',
                              nome: 'jessica valeska',
                              nomeProfessor: '',
                              notaSegundoSemestre: '',
                              numeroDaSala: 1)
                        });
                        final students = listStudents;

                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: students.length,
                          itemBuilder: (context, index) {
                            final student = students[index];
                            return ListTile(
                              title: Text("nome: " + student.nome),
                              // subtitle: Text("idade: "+ student.idade),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Idade: ${student.idade}"),
                                  Text("Nota 1º Semestre: ${student.notaPrimeiroSemestre}"),
                                  Text( "Nota 2º Semestre: ${student.notaSegundoSemestre}"),
                                  Text("Nome do Professor: ${student.nomeProfessor}"),
                                  Text("Número da Sala: ${student.numeroDaSala}"),
                                ],
                              ),
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
              ),
              Divider(
                height: 20.0,
                color: HexColor.hexToColor("#ECECEC"),
                thickness: 6.0, // Espessura da linha
                indent:
                    30.0, // Aumente este valor para mover a linha para a direita
                endIndent:
                    30.0, // Aumente este valor para mover a linha para a esquerda
              ),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
