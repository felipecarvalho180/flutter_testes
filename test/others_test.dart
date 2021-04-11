@Timeout(Duration(seconds: 60))

import 'package:flutter_test/flutter_test.dart';

main() {
  test('isWork', () {
    final String name = 'Felipe';
    expect(name,
        allOf([equals('Felipe'), isNotNull, contains('li'), isA<String>()]));
  });

  test('forçando erro', () {
    expect(() => int.parse('x'), throwsException);
  }, skip: 'testando ignorar um teste');
}
