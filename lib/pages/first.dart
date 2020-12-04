import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state/controllers/countController.dart';
import 'package:getx_state/controllers/userController.dart';

import 'second.dart';

class First extends StatelessWidget {
  // final CountController countController = Get.put(CountController());  // don't need if we're init in GetBuilder
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX | State Management"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountController>(
                init: CountController(),
                builder: (_) {
                  return Text("Current count value: ${_.count}");
                }),
            SizedBox(
              height: 40,
            ),
            GetX<UserController>(
              init: UserController(),
              builder: (_) {
                return Text("Name: ${_.user.value.name}");
              },
            ),
            Obx(() {
              return Text(
                  "Stored Count: ${Get.find<UserController>().user.value.count}");
            }),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Get.find<UserController>()
                    .updateUser(Get.find<CountController>().count);
              },
              child: Text("Update Name & Stored Count"),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              onPressed: () {
                Get.to(Second(), transition: Transition.rightToLeft);
              },
              child: Text("Next Screen"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CountController>().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
