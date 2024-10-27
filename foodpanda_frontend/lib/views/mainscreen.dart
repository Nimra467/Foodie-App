import 'package:flutter/material.dart';
import 'package:foodpanda_frontend/controllers/nav_controller.dart';
import 'package:foodpanda_frontend/views/home_screen.dart';
import 'package:foodpanda_frontend/views/order_detail.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  final NavController navController = Get.put(NavController());
  final List<Widget> widgetList = [
    HomeScreen(),
    Center(child: Text("Browse Page")),
    OrderDetailsScreen(),
    Center(child: Text("Orders Page")),
    Center(child: Text("Account Page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        // Ensure index is within bounds
        final index =
            navController.myIndex.value.clamp(0, widgetList.length - 1);
        return widgetList[index];
      }),
      bottomNavigationBar: Obx(
        () => Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 31, 4, 70).withOpacity(0.8),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home_outlined, "Setting", 0),
              _buildNavItem(Icons.search, "Browse", 1),
              _buildNavItem(Icons.shopping_cart_outlined, "Carts", 2),
              _buildNavItem(Icons.notes_sharp, "Orders", 3),
              _buildNavItem(Icons.person, "Account", 4),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () {
        navController.updateIndex(index);
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: navController.myIndex.value == index
                ? Colors.blueAccent
                : Colors.white,
          ),
          Text(
            label,
            style: TextStyle(
              color: navController.myIndex.value == index
                  ? Colors.blueAccent
                  : Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
