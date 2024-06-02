import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mine_animater/Views/Screens/views.dart';

class HomePage extends StatelessWidget {
  const      HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
        elevation: 1,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(Views());
            },
            icon: Icon(Icons.mood_rounded),
          ),
        ],
      ),
    );
  }
}
