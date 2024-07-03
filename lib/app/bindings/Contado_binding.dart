import 'package:get/get.dart';
import 'package:untitled3/app/controllers/Contador_controller.dart';

class ContadorBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<Contadorcontroller>(() => Contadorcontroller(
   ));
  }
}