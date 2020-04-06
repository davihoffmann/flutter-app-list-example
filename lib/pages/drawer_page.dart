import 'package:flutter/material.dart';
import 'package:flutter_app_list_example/pages/grid_view_example.dart';
import 'package:flutter_app_list_example/pages/list_view_example.dart';
import 'package:flutter_app_list_example/pages/list_view_example_builder.dart';
import 'package:flutter_app_list_example/pages/list_view_example_future_builder.dart';
import 'package:flutter_app_list_example/pages/list_view_example_service.dart';
import 'package:flutter_app_list_example/pages/page_view_example.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text("ListView"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListViewExample();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text("PageView"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PageViewExample();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text("GridView"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GridViewExample();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text("List view Normal - Service"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListViewServiceExample();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text("List view Normal - Builder"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListViewBuilderExample();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text("List view Normal - Future Builder"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ListViewFutureBuilderExample();
              }));
            },
          )
        ],
      ),
    );
  }
}