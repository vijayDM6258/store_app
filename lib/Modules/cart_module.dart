import 'package:get/get.dart';

class CartModel {
  int quantity;
  int price;
  String name;
  int id;

  CartModel({
    required this.name,
    required this.id,
    required this.price,
    required this.quantity,
  });
}
