// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:foodpanda_frontend/components/custom_background.dart';
// import 'package:foodpanda_frontend/controllers/auth_controller.dart';
// import 'package:foodpanda_frontend/views/signup_screen.dart';
// import 'package:get/get.dart';

// class SignUpScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final AuthController authController = Get.put(AuthController());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: CustomBackground(
//         child: Center(
//           child: SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 SizedBox(
//                     height: 80), // Adjust this for proper padding at the top
//                 // Logo at the top
//                 Column(
//                   children: [
//                     Image.asset("assets/images/logo.png"),
//                     Text(
//                       'Deliver Favourite Food',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 40),
//                 Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   decoration: BoxDecoration(
//                     color: Colors.black.withOpacity(0.3),
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Column(
//                     children: [
//                       SizedBox(height: 20),
//                       Text(
//                         "Login",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.w700),
//                       ),
//                       SizedBox(height: 20),
//                       TextField(
//                         controller: emailController,
//                         style: TextStyle(color: Colors.white),
//                         decoration: InputDecoration(
//                           labelText: 'example@gmail.com',
//                           labelStyle: TextStyle(color: Colors.white),
//                           prefixIcon: Icon(Icons.person_2_outlined,
//                               color: Colors.white),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       TextField(
//                         controller: passwordController,
//                         obscureText: true,
//                         style: TextStyle(color: Colors.white),
//                         decoration: InputDecoration(
//                           labelText: 'Password',
//                           labelStyle: TextStyle(color: Colors.white),
//                           prefixIcon: Icon(Icons.lock, color: Colors.white),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.white),
//                           ),
//                           suffixIcon: Icon(Icons.visibility,
//                               color: Colors
//                                   .white), // Eye icon for password visibility
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: TextButton(
//                           onPressed: () {},
//                           child: Text(
//                             'Forget Password?',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       ElevatedButton(
//                         onPressed: () async {
//                           String email = emailController.text;
//                           String password = passwordController.text;

//                           // Use AuthService for login
//                           User? user =
//                               await _authService.signIn(email, password);

//                           if (user != null) {
//                             Get.snackbar('Success', 'Logged in successfully');
//                             // Navigate to home screen or dashboard
//                           }
//                         },
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: const Color.fromARGB(
//                               255, 7, 53, 132), // Background color
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           padding: EdgeInsets.symmetric(vertical: 15),
//                           minimumSize: Size(double.infinity, 50),
//                         ),
//                         child: Text(
//                           'Login',
//                           style: TextStyle(fontSize: 18, color: Colors.white),
//                         ),
//                       ),
//                       SizedBox(height: 20),
//                       Text(
//                         "Or",
//                         style: TextStyle(color: Colors.white, fontSize: 16),
//                       ),
//                       SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           IconButton(
//                             onPressed: () {
//                               // Implement Google sign-in
//                             },
//                             icon: Icon(Icons.g_mobiledata,
//                                 color: const Color.fromARGB(255, 244, 98, 54),
//                                 size: 40),
//                           ),
//                           SizedBox(width: 20),
//                           IconButton(
//                             onPressed: () {
//                               // Implement Facebook sign-in
//                             },
//                             icon: Icon(Icons.facebook,
//                                 color: Colors.blue, size: 40),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 10),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//                   onPressed: () {
//                     authController.register(
//                       emailController.text.trim(),
//                       passwordController.text.trim(),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
//                     backgroundColor: Colors.blueAccent,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Text('Create Account'),
//                 ),
//                 SizedBox(height: 10),
//                 GestureDetector(
//                   onTap: () {
//                     // Navigate to login screen
//                     Get.toNamed('/login');
//                   },
//                   child: Text(
//                     'Already have an account? Sign In',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_frontend/components/custom_background.dart';
import 'package:foodpanda_frontend/services/auth_service.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  final AuthService _authService = Get.put(AuthService());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 80), // Padding at the top
                Column(
                  children: [
                    Image.asset("assets/images/logo.png"),
                    Text(
                      'Deliver Favourite Food',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: emailController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'example@gmail.com',
                          labelStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.person_2_outlined,
                              color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          suffixIcon:
                              Icon(Icons.visibility, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: confirmPasswordController,
                        obscureText: true,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          suffixIcon:
                              Icon(Icons.visibility, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () async {
                          String email = emailController.text;
                          String password = passwordController.text;
                          String confirmPassword =
                              confirmPasswordController.text;

                          if (password == confirmPassword) {
                            // Use AuthService for sign up
                            User? user =
                                await _authService.signUp(email, password);

                            if (user != null) {
                              Get.snackbar(
                                  'Success', 'Account created successfully',
                                  colorText: Color.fromARGB(0, 255, 255, 255));
                              // Navigate to home screen or dashboard
                            }
                          } else {
                            Get.snackbar('Error', 'Passwords do not match',
                                colorText: Color.fromARGB(0, 255, 255, 255));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 7, 53, 132),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 15),
                          minimumSize: Size(double.infinity, 50),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Or",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Implement Google sign-up
                            },
                            icon: Icon(Icons.g_mobiledata,
                                color: const Color.fromARGB(255, 244, 98, 54),
                                size: 40),
                          ),
                          SizedBox(width: 20),
                          IconButton(
                            onPressed: () {
                              // Implement Facebook sign-up
                            },
                            icon: Icon(Icons.facebook,
                                color: Colors.blue, size: 40),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.back(); // Navigate back to Login screen
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 40), // Padding at the bottom
              ],
            ),
          ),
        ),
      ),
    );
  }
}