import 'dart:convert';
import 'package:lab1/models/person-model.dart';
import 'package:http/http.dart' as http;

class PersonService {
  Future<List<Person>> getPersons() async {
    var client = http.Client();
    try {
      var response = await client.get(Uri.http('10.0.2.2:3000', 'api/list'));
      var listObjsJson = jsonDecode(response.body)['list'] as List;
      List<Person> result =
          listObjsJson.map((e) => Person.fromJson(e)).toList();
      return result;
    } finally {
      client.close();
    }
  }
}
