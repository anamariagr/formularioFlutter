import 'package:get/get.dart';
import 'package:untitled3/app/controllers/Login_controller.dart';

class LoginBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<LoginController>(() => LoginController(
    ));
  }
}