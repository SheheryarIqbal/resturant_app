import 'dart:convert';

// ignore_for_file: file_names

class ModelWidget {
  static List<Items> items = [
    Items(
        id: 1,
        name: "Grilled",
        type: "pizza",
        desc: "asdasdasdasasddasdasada",
        price: 850)
  ];
}

class Items {
  final int id;
  final String name;
  final String type;
  final String desc;
  final int price;
  Items({
    required this.id,
    required this.name,
    required this.type,
    required this.desc,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'desc': desc,
      'price': price,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      type: map['type'] ?? '',
      desc: map['desc'] ?? '',
      price: map['price']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Items.fromJson(String source) => Items.fromMap(json.decode(source));
}
