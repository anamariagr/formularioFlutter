import 'package:get/get.dart';
import 'package:untitled3/app/controllers/OderSealed_controller.dart';

class OderSealedBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<OderSealedController>(() => OderSealedController(
    ));
  }
}