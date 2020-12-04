import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getx_state/models/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final user = User().obs;

  updateUser(int count) {
    user.update((value) {
      value.name = "Aru";
      value.count = count;
    });
  }
}
