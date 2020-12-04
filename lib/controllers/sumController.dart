import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  increment() => count1.value++;
  increment2() => count2.value++;

  int get sum => count1.value + count2.value;

  @override
  void onInit() {
    ever(count1, (_) => printInfo(info: "Count1 has been changed"));
    ever(count2, (_) => printInfo(info: "Count2 has been changed"));

    once(count1, (_) => printInfo(info: "First Time Count1 is changed"));
    once(count2, (_) => printInfo(info: "First Time Count2 is changed"));

    debounce(count1,
        (_) => printInfo(info: "Count1 hasn't been changed for 1 second"),
        time: Duration(seconds: 1));
    debounce(count2,
        (_) => printInfo(info: "Count2 hasn't been changed for 1 second"),
        time: Duration(seconds: 1));

    interval(count1, (_) => printInfo(info: "every 1 second Count1 is changed"),
        time: Duration(seconds: 1));
    interval(count2, (_) => printInfo(info: "every 1 second Count2 is changed"),
        time: Duration(seconds: 1));
  }
}
