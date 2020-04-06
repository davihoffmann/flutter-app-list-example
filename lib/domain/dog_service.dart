import 'package:flutter_app_list_example/domain/dog.dart';

class DogService {

  static getAllDogsNormal() {

    List<Dog> dogs = List<Dog>();
    dogs.add(Dog("Cachorro 1", "dog1.png"));
    dogs.add(Dog("Cachorro 2", "dog2.png"));
    dogs.add(Dog("Cachorro 3", "dog3.png"));
    dogs.add(Dog("Cachorro 4", "dog4.png"));
    dogs.add(Dog("Cachorro 5", "dog5.png"));

    return dogs;
  }

}