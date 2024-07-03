import 'package:get/get.dart';
import 'package:untitled3/app/controllers/printJobOrder_controller.dart';

class PrintJobOrderBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<PrintJobOrderController>(() => PrintJobOrderController(
    ));
  }
}