import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mine_animater/Views/Screens/cart_page.dart';

class Jsonscreen extends StatelessWidget {
  const Jsonscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        centerTitle: true,
        title: Text('Milky Way'),
        actions: [
          InkWell(
            onTap: () {
              Get.to(CartPage());
            },
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            icon: Icon(Icons.auto_mode),
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
