import "dart:convert";
import 'package:flutter_endgame/services/product_service.dart';
import 'package:flutter_endgame/ultis/local_storage.dart';
import 'package:http/http.dart' as http;

Future<dynamic> login(data) async {

  try {
    final url = Uri.parse("$DOMAIN/api/Users/signin");

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    ); // gọi API với method

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);

      return json["content"];
    } else {
      throw Exception('Lỗi kết nối API: ${response.statusCode}');
    }
  } catch (exception) {
    throw Exception("Lỗi: $exception");
  }
}
