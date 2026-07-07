import 'dart:convert';

import 'package:hortiflutter2/models/user_model.dart';
import 'package:http/http.dart' as http;
class UserServices {
  static const String baseUrl = 'http://localhost:3000';
  //register
  static Future<bool> register(UserModel user) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(user.toJson()),
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      print('Failed to register user: ${response.body}');
      return false; 
    }
    
  }
}