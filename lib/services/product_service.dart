import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:projectpemmob/models/product_model.dart';


class ProductService {
  String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  Future<List<ProductModel>> getProducts() async {
    var url = '$baseUrl/products';
    var headers = {'Content-Type': 'application/json'};

<<<<<<< HEAD
    var response = await http.get(url as Uri, headers: headers);
=======
    var response = await http.get(url, headers: headers);
>>>>>>> ce2e830158d7ef2b9ea28f4a85e34176001af0a6

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Gagal Get Products!');
    }
  }
}
