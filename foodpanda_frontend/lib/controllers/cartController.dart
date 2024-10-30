// controllers/cartController.dart

import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Map<String, dynamic>>[].obs;

  void addToCart(Map<String, dynamic> item) {
    int index = cartItems.indexWhere((element) => element['name'] == item['name']);
    if (index != -1) {
      cartItems[index]['quantity'] += 1;
      cartItems.refresh(); // Update quantity
    } else {
      item['quantity'] = 1; // Set initial quantity
      cartItems.add(item);
    }
  }

  void removeFromCart(Map<String, dynamic> item) {
    cartItems.remove(item);
  }

  void increaseQuantity(Map<String, dynamic> item) {
    int index = cartItems.indexWhere((element) => element['name'] == item['name']);
    if (index != -1) {
      cartItems[index]['quantity'] += 1;
      cartItems.refresh();
    }
  }

  void decreaseQuantity(Map<String, dynamic> item) {
    int index = cartItems.indexWhere((element) => element['name'] == item['name']);
    if (index != -1 && cartItems[index]['quantity'] > 1) {
      cartItems[index]['quantity'] -= 1;
      cartItems.refresh();
    } else {
      cartItems.removeAt(index); // Remove item if quantity is 0
    }
  }

  double get totalPrice => cartItems.fold(
      0, (sum, item) => sum + (item['price'] * item['quantity']));
}
