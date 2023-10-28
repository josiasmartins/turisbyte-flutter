import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:library_teimosinhos/model/from_json_model.dart';

class Student extends FromJsonContract<Student> {
  final int id;
  final String nome;
  final String idade;
  final String notaPrimeiroSemestre;
  final String notaSegundoSemestre;
  final String nomeProfessor;
  final int numeroDaSala;

  // Student(this.id, this.nome, this.idade, this.notaPrimeiroSemestre, this.notaSegundoSemestre, this.nomeProfessor, this.numeroDaSala);

  Student({
    required this.id,
    required this.nome,
    required this.idade,
    required this.notaPrimeiroSemestre,
    required this.notaSegundoSemestre,
    required this.nomeProfessor,
    required this.numeroDaSala,
  });

  Student fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      nome: json['nome'],
      idade: json['idade'],
      notaPrimeiroSemestre: json['nota_primeiro_semestre'],
      notaSegundoSemestre: json['nota_segundo_semestre'],
      nomeProfessor: json['nome_professor'],
      numeroDaSala: json['numero_da_sala'],
    );
  }
  
  // @override
  // Student fromJson(Map<String, dynamic> json) {
  //   return Student(
  //     id: json['id'],
  //     nome: json['nome'],
  //     idade: json['idade'],
  //     notaPrimeiroSemestre: json['nota_primeiro_semestre'],
  //     notaSegundoSemestre: json['nota_segundo_semestre'],
  //     nomeProfessor: json['nome_professor'],
  //     numeroDaSala: json['numero_da_sala'],
  //   );
  // }
  
  Map<String, dynamic> toJson() {
     return {
      'id': id,
      'nome': nome,
      'idade': idade,
      'nota_primeiro_semestre': notaPrimeiroSemestre,
      'nota_segundo_semestre': notaSegundoSemestre,
      'nome_professor': nomeProfessor,
      'numero_da_sala': numeroDaSala,
    };
  }
}