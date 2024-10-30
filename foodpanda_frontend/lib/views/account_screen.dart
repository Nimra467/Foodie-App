import 'package:flutter/material.dart';
import 'package:foodpanda_frontend/components/custom_background.dart';
import 'package:foodpanda_frontend/controllers/auth_controller.dart';
import 'package:get/get.dart';

class AccountScreen extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              await authController.logout();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Button color
            ),
            child: Text(
              "Logout",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
