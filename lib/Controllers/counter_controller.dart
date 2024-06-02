import 'package:get/get.dart';
import 'package:mine_animater/Modules/counter_modules.dart';

class CounterController extends GetxController {
  CounterModel counterModel = CounterModel(count: 0.obs);

  void increment() {
    counterModel.count++;
  }

  void decrement() {
    counterModel.count--;
  }
}
