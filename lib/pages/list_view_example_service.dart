import 'package:flutter/material.dart';
import 'package:flutter_app_list_example/domain/dog.dart';
import 'package:flutter_app_list_example/domain/dog_service.dart';

class ListViewServiceExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo List"),
      ),
      body: _body(),
    );
  }

  _body() {
    final dogs = DogService.getAllDogsNormal();

      /*
      List<Widget> widgets = List<Widget>();
      for(Dog dog in dogs) {
        widgets.add(_img(dog));
      }
      */

      final widgets = dogs.map<Widget>((Dog dog) {
        return _img(dog);
      }).toList();

    return ListView(
      children: widgets,
    );
  }

  _img(Dog dog) {
    return Stack(
      children: <Widget>[
        Container(
          height: 300,
          child: Image.asset(
            "assets/images/${dog.foto}",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(color: Colors.black),
          child: Text(
            "Dog ${dog.nome}",
            style: TextStyle(
              color: Colors.white
            ),
          ),
        )
      ],
    );
  }
}
