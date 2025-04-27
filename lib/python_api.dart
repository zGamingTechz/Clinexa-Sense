import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> sendMessageToAI(String message) async {
  final response = await http.post(
    Uri.parse('http://127.0.0.1:5000/chat'),
    headers: {"Content-Type": "application/json"},
    body: jsonEncode({"message": message}),
  );
  final data = jsonDecode(response.body);
  return data['response'];
}