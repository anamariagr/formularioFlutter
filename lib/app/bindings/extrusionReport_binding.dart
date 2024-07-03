import 'package:get/get.dart';
import 'package:untitled3/app/controllers/Extrusion_controller.dart';

class ExtrusionReportBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<ExtrusionController>(() => ExtrusionController(
    ));
  }
}