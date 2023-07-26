import '../model/product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'dart:async';

class Services {
  Future<List<Product>?> getAllProduct() async {
    try {
      var response = await http
      .get(Uri.parse("https://v2.api.sibabe.app/customer/products"))
      .timeout(const Duration(seconds: 15), onTimeout: (){
        throw TimeoutException("Connection time out, try again later");
      });

      if (response.statusCode == 200) {
        List jsonResponse = convert.jsonDecode(response.body);
        return jsonResponse.map((e) => new Product.fromJson(e)).toList();
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
    return null;
  }
}