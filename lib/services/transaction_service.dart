import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/cart_model.dart';

class TransactionService {
  String baseUrl = 'https://shamo-backend.buildwithangga.id/api';

  Future<bool> checkout(
      String token, List<CartModel> carts, double totalPrice) async {
    var url = '$baseUrl/checkout';
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': token,
    };
    var body = jsonEncode(
      {
        'address': 'Marsemoon',
        'items': carts
            .map(
              (cart) => {
                'id': cart.product.id,
                'quantity': cart.quantity,
              },
            )
            .toList(),
        'status': "PENDING",
        'total_price': totalPrice,
        'shipping_price': 0,
      },
    );

    var response = await http.post(
<<<<<<< HEAD
      url as Uri,
=======
      url,
>>>>>>> ce2e830158d7ef2b9ea28f4a85e34176001af0a6
      headers: headers,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Gagal Melakukan Checkout!');
    }
  }
}
