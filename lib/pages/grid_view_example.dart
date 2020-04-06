import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
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
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: <Widget>[
        _img("dog1.png"),
        _img("dog2.png"),
        _img("dog3.png"),
        _img("dog4.png"),
        _img("dog5.png"),
      ],
    );
  }

  _img(String s) {
    return Stack(
      children: <Widget>[
        Container(
          height: 300,
          child: Image.asset(
            "assets/images/$s",
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(color: Colors.black),
          child: Text(
            "Dog $s",
            style: TextStyle(
              color: Colors.white
            ),
          ),
        )
      ],
    );
  }
}
