// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_application_1/addproducts.dart';
import 'package:flutter_application_1/products_getter.dart';
import 'package:flutter/material.dart';

import 'Item_widget.dart';
import 'myDrawer.dart';

class ProductsUI extends StatefulWidget {
  const ProductsUI({Key? key}) : super(key: key);

  @override
  State<ProductsUI> createState() => _ProductsUIState();
}

class _ProductsUIState extends State<ProductsUI> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var products = await rootBundle.loadString("assets/files/products.json");
    // ignore: avoid_print
    var productsData = jsonDecode(products);
    productsData = productsData["products"];
    // ignore: avoid_print
    print(productsData);
    ModelWidget.items = List.from(productsData)
        .map<Items>((items) => Items.fromMap(items))
        .toList();
    setState(() {});
  }

  navigation() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AddProduct(),
        ));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final dummylist = List.generate(20, (index) => ModelWidget.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Card(
          child: GridView.builder(
        itemCount: ModelWidget.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: ModelWidget.items[index],
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 100,
          crossAxisCount: 2,
        ),
      )),
      drawer: Drawer(
        child: ListView(
          children: const [MyDrawer(userName: "admin")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        child: const Icon(
          Icons.add,
          size: 20,
        ),
        onPressed: navigation,
      ),
    );
  }
}
