import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String name = "admin";

  final String password = "password";

  final _formkey = GlobalKey<FormState>();

  void validation(context) async {
    if (_formkey.currentState!.validate()) {
      await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(username: name),
          ));
    }
  }

  @override
  Widget build(BuildContext context) => Material(
          child: Form(
        key: _formkey,
        child: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            const Text(
              'Login',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextFormField(
                decoration: const InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.blue,
                    ),
                    hintText: "Enter your Username",
                    labelText: "User Name",
                    constraints: BoxConstraints(maxHeight: 100, maxWidth: 400)),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Username is incorrect";
                  } else if (value != name) {
                    return "Username is incorrect";
                  } else {
                    return null;
                  }
                }),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                icon: Icon(
                  Icons.password,
                  color: Colors.blue,
                ),
                hintText: "Enter your password",
                labelText: "Password",
                constraints: BoxConstraints(maxHeight: 100, maxWidth: 400),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Password is incorrect";
                } else if (value != password) {
                  return "password is incorrect";
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 40,
            ),
            // ignore: avoid_print
            ElevatedButton(
              onPressed: () {
                validation(context);
              },
              child: const Text("Login"),
              style: TextButton.styleFrom(minimumSize: const Size(120, 45)),
            )
          ],
        ),
      ));
}
