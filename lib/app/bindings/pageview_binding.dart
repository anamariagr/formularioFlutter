import 'package:get/get.dart';
import 'package:untitled3/app/controllers/pageview_controller.dart';


class PageViewBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<PageviewController>(() => PageviewController(
   ));
  }
}