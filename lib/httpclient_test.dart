import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> getAllTodos() async {
  var url = 'https://jsonplaceholder.typicode.com/todos';
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var values = json.decode(response.body);
    return values;
  }
  return <dynamic>[];
}
