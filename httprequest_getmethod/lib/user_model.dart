import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  late String id;
  late String name;

  User({required this.id, required this.name});
  factory User.createUser(Map<String, dynamic> object) {
    return User(
      id: object['id'].toString(),
      name: object['first_name'] + " " + object['last_name'],
    );
  }
  static Future<User> connectToAPI(String id) async {
    String apiURL = "https://reqres.in/api/users/2";
    var apiResult = await http.get(Uri.parse(apiURL));
    var jsonObject = json.decode(apiResult.body);
    var userData = (jsonObject as Map<String, dynamic>)['data'];

    return User.createUser(userData);
  }
}
