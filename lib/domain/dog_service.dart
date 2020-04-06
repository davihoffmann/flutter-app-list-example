import 'package:flutter/services.dart';
import 'package:flutter_app_list_example/domain/dog.dart';
import 'dart:convert' as convert;

class DogService {

  static Future<List<Dog>> getDogs() async {
    try {
      await Future.delayed(Duration(seconds: 1));

      String json = await rootBundle.loadString("assets/json/dogs.json");

      final map = convert.json.decode(json);
      String data = map["dataAula"];
      print("Data: $data");

      int qtdeAlunos = map["qtdeAlunos"];
      print("Qdte Alunos: $qtdeAlunos");

      final lista = map["lista"];

      final dogs = lista.map<Dog>((json) => Dog.fromJson(json)).toList();
      print("Dogs: $dogs");

      return dogs;
    } catch(error) {
      print("$error");
    }
  }


  static List<Dog> getAllDogsNormal() {

    List<Dog> dogs = List<Dog>();
    dogs.add(Dog("Cachorro 1", "dog1.png"));
    dogs.add(Dog("Cachorro 2", "dog2.png"));
    dogs.add(Dog("Cachorro 3", "dog3.png"));
    dogs.add(Dog("Cachorro 4", "dog4.png"));
    dogs.add(Dog("Cachorro 5", "dog5.png"));

    return dogs;
  }

}