import 'package:get/get.dart';
import 'package:untitled3/app/controllers/gate_controller.dart';

class GateBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<GateController>(() => GateController(
    ));
  }
}