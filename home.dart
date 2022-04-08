import 'package:flutter/material.dart';
import 'package:flutter_application_1/mydrawer.dart';

class Home extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  Home({Key? key, required this.username}) : super(key: key);
  static bool valueSelected = false;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.lightBlue,
      ),
      body: const Text("Home Page"),
      drawer: Drawer(
        child: ListView(children: [MyDrawer(userName: username)]),
      ),
    );
  }
}
