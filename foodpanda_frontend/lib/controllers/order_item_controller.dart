import 'package:foodpanda_frontend/controllers/order_controller.dart';
import 'package:get/get.dart';

class OrderItemController extends GetxController {
  var orderItem = OrderItem(
    imagePath: 'assets/images/burger.png',
    price: '\$12.99',
    description: 'Delicious Burger',
    label: 'Cheese Sauce',
  ).obs; // Make orderItem observable

  void incrementCount() {
    orderItem.update((item) {
      item!.count++;
    });
  }

  void decrementCount() {
    if (orderItem.value.count > 1) {
      orderItem.update((item) {
        item!.count--;
      });
    }
  }
}
