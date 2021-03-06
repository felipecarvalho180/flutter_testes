import 'dart:convert';
import 'dart:math' as math;

class Person {
  final int id;
  final String name;
  final int age;
  final double weight;
  final double height;

  Person({
    required this.id,
    required this.name,
    required this.age,
    required this.weight,
    required this.height,
  });

  double get imc {
    var result = weight / math.pow(height, 2);
    result = result * 100;
    return result.roundToDouble() / 100;
  }

  bool get isOlder {
    return age >= 18;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'weight': weight,
      'height': height,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      id: int.parse(map['id']),
      name: map['name'],
      age: map['age'],
      weight: map['weight'] * 1.0,
      height: map['height'] * 1.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) => Person.fromMap(json.decode(source));
}
