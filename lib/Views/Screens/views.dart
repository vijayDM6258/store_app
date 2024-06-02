import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mine_animater/Controllers/counter_controller.dart';

import 'json_screen.dart';

class Views extends StatelessWidget {
  const Views({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController counterController = Get.put(
        CounterController()); //get put thi controller call karvanu to tya ema thi je ky model ke je mthod che te aply kari shakiye
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Counter Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              //obx thi je jagya e je kay change karvano che tena thi wra karvanu too j te jagya par change thse
              () => Text('${counterController.counterModel.count}',
                  style: TextStyle(fontSize: 25)),
            ),
          ),
          TextButton(
            onPressed: () {
              Get.to(Jsonscreen());
            },
            child: Text('Json screens'),
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterController.increment();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () {
              counterController.decrement();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
