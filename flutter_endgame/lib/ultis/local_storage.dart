import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = FlutterSecureStorage();

// lưu token
Future<void> saveToken(token) async {
  await storage.write(key: "LOGIN_TOKEN", value: token);
}

Future<dynamic> getToken() async {

   String? token = await storage.read(key: "LOGIN_TOKEN");
  return token ?? "Không có dữ liệu";
}

Future<void> deleteToken() async {
  await storage.delete(key: "LOGIN_TOKEN");
}
