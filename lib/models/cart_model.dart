import 'package:projectpemmob/models/product_model.dart';

<<<<<<< HEAD
=======

>>>>>>> ce2e830158d7ef2b9ea28f4a85e34176001af0a6
class CartModel {
  int id;
  ProductModel product;
  int quantity;

  CartModel({
<<<<<<< HEAD
    required this.id,
    required this.product,
    required this.quantity,
  });

  CartModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        product = ProductModel.fromJson(json['product']),
        quantity = json['quantity'];
=======
    this.id,
    this.product,
    this.quantity,
  });

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    product = ProductModel.fromJson(json['product']);
    quantity = json['quantity'];
  }
>>>>>>> ce2e830158d7ef2b9ea28f4a85e34176001af0a6

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product': product.toJson(),
      'quantity': quantity,
    };
  }

  double getTotalPrice() {
    return product.price * quantity;
  }
}
