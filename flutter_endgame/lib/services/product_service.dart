import "dart:convert";
import 'package:http/http.dart' as http;

var DOMAIN = "https://apistore.cybersoft.edu.vn";
var DOMAIN_IMG = "https://apistore.cybersoft.edu.vn/images";

Future<dynamic> getProduct() async {
  try {
    final url = Uri.parse("$DOMAIN/api/product");

    final response = await http.get(url); // gọi API với method
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

Future<dynamic> getGraphQL() async {
  try {
    final url = Uri.parse("https://graphqlzero.almansi.me/api");

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "query": """
      {
        photos {
          data {
            id
            title
            url
          }
        }
      }
    """,
      }),
    ); // gọi API với method
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      print(json);
      return json;
    } else {
      throw Exception('Lỗi kết nối API: ${response.statusCode}');
    }
  } catch (exception) {
    throw Exception("Lỗi: $exception");
  }
}


Future<dynamic> getProductDetail(productId) async {
  try {
    final url = Uri.parse("$DOMAIN/api/product/getid?id=$productId");

    final response = await http.get(url); // gọi API với method
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