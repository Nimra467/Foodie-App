import 'package:flutter/material.dart';
import 'package:foodpanda_frontend/components/bottom_container.dart';
import 'package:foodpanda_frontend/components/custom_background.dart';
import 'package:foodpanda_frontend/components/order_items.dart';
import 'package:get/get.dart';

class OrderDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        child: SingleChildScrollView(
          // Allow scrolling
          child: Padding(
            // Add padding to avoid overflow
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Order Details',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Order Items
                OrderItemContainer(
                  imagePath: 'assets/images/burger.png',
                  price: '\$12.99',
                  description: 'Delicious Burger',
                  label: 'Cheese Sauce',
                  onCountChanged: (count) {
                    print("Item count: $count");
                  },
                ),
                OrderItemContainer(
                  imagePath: 'assets/images/burger.png',
                  price: '\$12.99',
                  description: 'Delicious Burger',
                  label: 'Cheese Sauce',
                  onCountChanged: (count) {
                    print("Item count: $count");
                  },
                ),
                SizedBox(height: 36),
                // Bottom Summary Container
                BottomSummaryContainer(
                  subtotal: "\$25.00",
                  deliveryFee: "\$5.00",
                  total: "\$30.00",
                  onCheckout: () {
                    // Handle checkout action with GetX navigation
                    Get.snackbar(
                      "Checkout",
                      "Proceeding to payment",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
