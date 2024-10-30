// controllers/cartController.dart

import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Map<String, dynamic>>[].obs;

  void addToCart(Map<String, dynamic> item) {
    cartItems.add(item);
  }

  void removeFromCart(Map<String, dynamic> item) {
    cartItems.remove(item);
  }

  double get totalPrice =>
      cartItems.fold(0, (sum, item) => sum + item['price']);
}
