import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled5/models/users.dart';

class UserService{
  final String baseUrl = 'https://reqres.in/api';

  Future<List<Users>> fetchUsers() async {
    final response = await http.get(Uri.parse('$baseUrl/users?page=1'));

    if (response.statusCode == 200){
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> usersJson = data['data'];


      return usersJson.map((json) => Users.fromJson(json)).toList();
    } else{
      throw Exception('Failed to load users');
    }
  }
}