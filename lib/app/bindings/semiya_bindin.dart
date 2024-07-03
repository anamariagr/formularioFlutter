import 'package:get/get.dart';
import 'package:untitled3/app/controllers/semiya_controller.dart';

class SemiyaBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<SemiyaController>(() => SemiyaController(
    ));
  }
}