// views/cart_screen.dart

import 'package:flutter/material.dart';
import 'package:foodpanda_frontend/components/custom_background.dart';
import 'package:foodpanda_frontend/controllers/cartController.dart';
import 'package:foodpanda_frontend/views/track_order_screen.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomBackground(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Obx(() {
                if (cartController.cartItems.isEmpty) {
                  return Center(child: Text('Your cart is empty'));
                }
                return ListView.builder(
                  itemCount: cartController.cartItems.length,
                  itemBuilder: (context, index) {
                    final item = cartController.cartItems[index];
                    return Card(
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                      child: ListTile(
                        leading: ClipOval(
                          child: Image.network(
                            item['imageUrl'],
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          item['name'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text('\$${item['price'].toStringAsFixed(2)}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove_circle_outline,
                                  color: Colors.red),
                              onPressed: () {
                                cartController.decreaseQuantity(item);
                              },
                            ),
                            Text('${item['quantity']}'),
                            IconButton(
                              icon: Icon(Icons.add_circle_outline,
                                  color: Colors.green),
                              onPressed: () {
                                cartController.increaseQuantity(item);
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(() {
              return Text(
                'Total: \$${cartController.totalPrice.toStringAsFixed(2)}',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400]),
              );
            }),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 7, 53, 132),
              ),
              onPressed: () {
                // Handle checkout action
                Get.snackbar('Checkout', 'Proceeding to checkout',
                    colorText: Colors.white,
                    snackPosition: SnackPosition.BOTTOM);
                Get.to(TrackOrderScreen());
              },
              child: Text(
                'Checkout',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
