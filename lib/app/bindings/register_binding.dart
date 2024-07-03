import 'package:get/get.dart';
import 'package:untitled3/app/controllers/register_controller.dart';

class RegisterBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<RegisterController>(() => RegisterController(
    ));
  }
}