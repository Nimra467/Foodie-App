import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodpanda_frontend/services/auth_service.dart';
import 'package:foodpanda_frontend/views/login_Screen.dart';
import 'package:foodpanda_frontend/views/mainscreen.dart';
import 'package:foodpanda_frontend/views/signup_screen.dart';
import 'package:get/get.dart';
import 'controllers/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Initialize AuthController here
  Get.put(AuthController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Ordering App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black,
      ),
      initialRoute:
          FirebaseAuth.instance.currentUser == null ? '/login' : '/main',
      getPages: [
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/signup', page: () => SignUpScreen()),
        GetPage(name: '/main', page: () => NavBar()),
      ],
    );
  }
}
