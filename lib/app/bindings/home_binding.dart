import 'package:get/get.dart';
import 'package:untitled3/app/controllers/Home_controller.dart';

class HomeBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<HomeController>(() => HomeController(
     ));
  }
}