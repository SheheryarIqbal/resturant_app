import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';
//import 'package:flutter_application_1/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      routes: {
        "/": (context) => const LoginPage(),
      },
    );
  }
}
