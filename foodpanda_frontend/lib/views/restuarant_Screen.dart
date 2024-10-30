import 'package:flutter/material.dart';
import 'package:foodpanda_frontend/components/custom_background.dart';
import 'package:foodpanda_frontend/controllers/cartController.dart';
import 'package:get/get.dart';

class RestaurantPage extends StatelessWidget {
  // Sample static food items
  final List<Map<String, dynamic>> foodItems = [
    {
      'name': 'Pizza',
      'price': 10.99, // Changed to double
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIibPbOeDQQscm9g-fDNdCvROokQJukg8nYQ&s',
    },
    {
      'name': 'Burger',
      'price': 8.99, // Changed to double
      'imageUrl':
          'https://www.recipetineats.com/tachyon/2023/09/Crispy-fried-chicken-burgers_5.jpg?resize=900%2C1125&zoom=1',
    },
    {
      'name': 'Pasta',
      'price': 12.99, // Changed to double
      'imageUrl':
          'https://skinnyspatula.com/wp-content/uploads/2022/01/Pink_Pasta_Sauce2.jpg',
    },
    {
      'name': 'Fries',
      'price': 7.99, // Changed to double
      'imageUrl':
          'https://www.budgetbytes.com/wp-content/uploads/2023/12/air-fryer-french-fries-vertical-web-ready-4-800x1067.jpg',
    },
  ];

  final CartController cartController =
      Get.find<CartController>(); // Use Get.find() instead of Get.put()

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: foodItems.length,
            itemBuilder: (context, index) {
              final item = foodItems[index];
              return Card(
                color: Colors.transparent,
                elevation: 0,
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
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
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  subtitle: Text(
                    '\$${item['price'].toStringAsFixed(2)}', // Format price
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.add_circle_outline, color: Colors.grey),
                    onPressed: () {
                      cartController.addToCart(item);
                      Get.snackbar(
                        'Added to Cart',
                        '${item['name']} added to cart',
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    },
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
