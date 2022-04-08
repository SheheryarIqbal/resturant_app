import 'dart:convert';

class ModelTypes {
  static List<TypesOfProducts> types = [TypesOfProducts(type: "pizza")];
}

class TypesOfProducts {
  final String type;

  TypesOfProducts({
    required this.type,
  });

  TypesOfProducts copyWith({
    String? type,
  }) {
    return TypesOfProducts(
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'type': type,
    };
  }

  factory TypesOfProducts.fromMap(Map<String, dynamic> map) {
    return TypesOfProducts(
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TypesOfProducts.fromJson(String source) =>
      TypesOfProducts.fromMap(json.decode(source));
}
