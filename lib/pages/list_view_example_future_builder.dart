import 'package:flutter/material.dart';
import 'package:flutter_app_list_example/domain/dog.dart';
import 'package:flutter_app_list_example/domain/dog_service.dart';

class ListViewFutureBuilderExample extends StatelessWidget {
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
    Future<List<Dog>> future = DogService.getDogs();

    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if(!snapshot.hasData) {
          return Center(child: CircularProgressIndicator(),);
        }
        return _listDogs(snapshot.data);
      },
    );
  }

  _listDogs(List<Dog> dogs) {
    return ListView.builder(
      itemCount: dogs.length,
      itemBuilder: (context, index) {
        Dog dog = dogs[index];

        return _img(dog);
      },

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
