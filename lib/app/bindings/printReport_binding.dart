import 'package:get/get.dart';
import 'package:untitled3/app/controllers/printReport_controller.dart';

class PrintReportBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<PrintReportController>(() => PrintReportController(
    ));
  }
}