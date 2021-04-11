import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testes/person.dart';

void main() {
  final person =
      Person(id: 1, name: 'Felipe', age: 23, weight: 63.5, height: 1.75);

  test('Imc deve vir 20.73', () {
    expect(person.imc, 20.73);
  });

  group('isOlder | ', () {
    test('Deve ser maior de idade', () {
      final person =
          Person(id: 1, name: 'Felipe', age: 18, weight: 63.5, height: 1.75);
      expect(person.isOlder, true);
    });

    test('Deve ser menor de idade', () {
      final person =
          Person(id: 1, name: 'Felipe', age: 17, weight: 63.5, height: 1.75);
      expect(person.isOlder, false);
    });
  });
}
