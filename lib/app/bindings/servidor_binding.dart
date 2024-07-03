import 'package:get/get.dart';
import 'package:untitled3/app/controllers/servidor_controller.dart';

class ServidorBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<ServidorController>(() => ServidorController(
    ));
  }
}