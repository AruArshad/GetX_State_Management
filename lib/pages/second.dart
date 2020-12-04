import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state/controllers/sumController.dart';

class Second extends GetWidget<SumController> {
  // final SumController sumController = Get.put(SumController()); //don't need if GetWidget extended
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                GetX<SumController>(builder: (_) {
                  print("Count 1 Rebuild");
                  return Text(
                    "Counter #1:  ${_.count1.value}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  );
                }),
                Text("                       +"),
                GetX<SumController>(builder: (_) {
                  print("Count 2 Rebuild");
                  return Text(
                    "Counter #1:  ${_.count2.value}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  );
                }),
                Text("                       ="),
                GetX<SumController>(builder: (_) {
                  print("Sum Rebuild");
                  return Text(
                    "Sum:              ${_.sum}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  );
                }),
                SizedBox(
                  height: 40,
                ),
                RaisedButton(
                  onPressed: () {
                    // sumController.increment(); // don't need if we have GetWidget Controller
                    controller.increment();
                  },
                  child: Text("Increment Counter #1"),
                ),
                RaisedButton(
                  onPressed: () {
                    // sumController.increment2();
                    controller.increment2();
                  },
                  child: Text("Increment Counter #2"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
