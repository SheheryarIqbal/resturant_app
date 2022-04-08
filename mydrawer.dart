// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/products.dart';
import 'home.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key, required this.userName}) : super(key: key);
  static String name = "name";
  static String email = "name";
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      DrawerHeader(
        padding: EdgeInsets.zero,
        child: UserAccountsDrawerHeader(
          margin: EdgeInsets.zero,
          accountName: Text(MyDrawer.name),
          accountEmail: Text(MyDrawer.email),
        ),
      ),
      MySizedBoxed(
        name: "Home",
        icon: const Icon(
          CupertinoIcons.home,
          color: Colors.black,
        ),
        nextpage: Home(
          username: userName,
        ),
      ),
      const MySizedBoxed(
        name: "Orders",
        icon: Icon(
          CupertinoIcons.shopping_cart,
          color: Colors.black,
        ),
        nextpage: HomePage(),
      ),
      const MySizedBoxed(
        name: "Products",
        icon: Icon(
          CupertinoIcons.add_circled_solid,
          color: Colors.black,
        ),
        nextpage: ProductsUI(),
      ),
    ]);
  }
}

class MySizedBoxed extends StatelessWidget {
  const MySizedBoxed(
      {Key? key,
      required this.name,
      required this.icon,
      required this.nextpage})
      : assert(nextpage != null),
        super(key: key);
  final String name;
  final Icon icon;
  // ignore: prefer_typing_uninitialized_variables
  final nextpage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListTile(
        onTap: () {
          Home.valueSelected = true;
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => nextpage,
              ));
        },
        selected: Home.valueSelected,
        leading: icon,
        title: Text(
          name,
          textScaleFactor: 1.2,
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
