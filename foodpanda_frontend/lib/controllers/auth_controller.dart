import 'package:flutter/material.dart';
import 'package:foodpanda_frontend/services/auth_service.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  Rx<User?> _firebaseUser = Rx<User?>(null);
  FirebaseAuth auth = FirebaseAuth.instance;
  final AuthService _authService = AuthService();

  @override
  void onInit() {
    _firebaseUser.bindStream(auth.authStateChanges());
    ever(_firebaseUser, _setInitialScreen);
    super.onInit();
  }

  void _setInitialScreen(User? user) {
    if (user == null) {
      Get.offAllNamed('/login');
    } else {
      Get.offAllNamed('/main');
    }
  }

  // Sign up function
  Future<void> register(String email, String password) async {
    User? user = await _authService.signUp(email, password);
    if (user != null) {
      Get.snackbar('Success', 'Account created successfully',
          colorText: Colors.white);
    } else {
      Get.snackbar('Error', 'Could not create account',
          colorText: Colors.white);
    }
  }

  // Sign in function
  Future<void> login(String email, String password) async {
    User? user = await _authService.signIn(email, password);
    if (user != null) {
      Get.snackbar('Success', 'Logged in successfully',
          colorText: Colors.white);
      Get.offAllNamed('/main');
    } else {
      Get.snackbar('Error', 'Invalid credentials', colorText: Colors.white);
    }
  }

  // Logout
  void signOut() {
    _authService.signOut();
    Get.offAllNamed('/login');
  }
}
