import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter_testes/person.dart';

class PersonRepository {
  late http.Client client;

  PersonRepository([http.Client? newClient]) {
    client = newClient ?? http.Client();
  }

  Future<List<Person>> getPersons() async {
    final response = await client.get(
        Uri.parse('https://5ecafaf138df960016511b4c.mockapi.io/api/v1/person'));

    if (response.statusCode == 200) {
      final jsonList = jsonDecode(response.body) as List;
      return jsonList.map((e) => Person.fromMap(e)).toList();
    } else {
      throw Exception('Erro');
    }
  }
}
