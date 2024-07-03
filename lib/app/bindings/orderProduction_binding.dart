import 'package:get/get.dart';
import 'package:untitled3/app/controllers/orderProduction_controller.dart';

class OrderProductionBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<OrderProductionController>(() => OrderProductionController(
    ));
  }
}