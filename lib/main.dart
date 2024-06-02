import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:mine_animater/Views/Screens/cart_page.dart';
import 'package:mine_animater/Views/Screens/views.dart';
import 'Views/Screens/home_page.dart';
import 'Views/Screens/json_screen.dart';

void main() {
  runApp(Animater());
}

class Animater extends StatelessWidget {
  const Animater({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: CartPage(),
      // getPages: [
      //   GetPage(name: '/ViewsScreen', page: () => Views()),
      //   GetPage(name: '/JsonScreen', page: () => Jsonscreen()),
      //   GetPage(name: '/Cart Page', page: () => Jsonscreen()),
      // ],
    );
  }
}
