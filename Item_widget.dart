// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/products_getter.dart';

class ItemWidget extends StatelessWidget {
  final Items item;
  const ItemWidget({Key? key, required this.item})
      :
        // ignore: unnecessary_null_comparison
        assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        item.name,
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.w900, fontSize: 36),
      ),
      title: Text(
        item.type,
        style: const TextStyle(
            color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 24),
      ),
      subtitle: Text(item.desc),
      trailing: Text("Rs " + item.price.toString()),
    );
  }
}
