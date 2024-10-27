import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:foodpanda_frontend/components/custom_background.dart';
import 'package:foodpanda_frontend/components/details.dart';
import 'package:foodpanda_frontend/components/different_containers.dart';
import 'package:foodpanda_frontend/controllers/home_controller';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    _buildTopRow(),
                    _buildLocationText(),
                    _buildSearchField(),
                    SizedBox(height: 15),
                    _buildCategoriesRow(),
                    _buildCategoriesScroll(),
                    SizedBox(height: 10),
                    _buildOffersScroll(),
                    SizedBox(height: 10),
                    _buildSectionTitle('Fastest near you'),
                    SizedBox(height: 10),
                    Image.asset('assets/images/Card.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopRow() {
    return Row(
      children: [
        Icon(Icons.menu, color: Colors.white, size: 30),
        SizedBox(width: 15),
        Text(
          'Delivery',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white.withOpacity(0.6),
          ),
        ),
        Spacer(),
        Image.asset('assets/images/segmentedControl.png'),
      ],
    );
  }

  Widget _buildLocationText() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        'Maplewood Suites',
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color.fromRGBO(76, 116, 140, 1.0)),
        ),
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.white, size: 25),
            hintText: 'Your Order?',
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 16,
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 20.0),
          ),
          style: TextStyle(color: Colors.white.withOpacity(0.6)),
        ),
      ),
    );
  }

  Widget _buildCategoriesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Categories',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        Text(
          'See All',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.white.withOpacity(0.6),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoriesScroll() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DifferentContainers(imagePath: 'assets/images/burger.png'),
          SizedBox(width: 10),
          DifferentContainers(imagePath: 'assets/images/cake.png'),
          SizedBox(width: 10),
          DifferentContainers(imagePath: 'assets/images/mexican.png'),
          SizedBox(width: 10),
          DifferentContainers(imagePath: 'assets/images/sushi.png'),
        ],
      ),
    );
  }

  Widget _buildOffersScroll() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Containers(
              imagePath: 'assets/images/soap.png',
              heading: '30% OFF',
              text: 'Discover Discounts in your',
              secondText: 'favorite local restaurants',
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}
