import 'package:flutter/material.dart';
import 'package:flutter_app_list_example/pages/drawer_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo List"),
      ),
      body: _body(),
      drawer: DrawerPage(),
    );
  }

  _body() {
    return Container();
  }

}
