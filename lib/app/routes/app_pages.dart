import 'package:get/get.dart';
import 'package:untitled3/app/bindings/Contado_binding.dart';
import 'package:untitled3/app/bindings/Login_binding.dart';
import 'package:untitled3/app/bindings/OrderSealed_binding.dart';
import 'package:untitled3/app/bindings/extrusionReport_binding.dart';
import 'package:untitled3/app/bindings/gate_binding.dart';
import 'package:untitled3/app/bindings/home_binding.dart';

import 'package:untitled3/app/bindings/orderProduction_binding.dart';
import 'package:untitled3/app/bindings/printJobOrder_binding.dart';
import 'package:untitled3/app/bindings/printReport_binding.dart';
import 'package:untitled3/app/bindings/register_binding.dart';
import 'package:untitled3/app/bindings/semiya_bindin.dart';
import 'package:untitled3/app/bindings/servidor_binding.dart';
import 'package:untitled3/app/controllers/orderProduction_controller.dart';
import 'package:untitled3/app/ui/pages/ExtrusionReport/Extrusion_page.dart';
import 'package:untitled3/app/ui/pages/contador_page/contador_page.dart';
import 'package:untitled3/app/ui/pages/gatepage/gate_page.dart';
import 'package:untitled3/app/ui/pages/home/home_page.dart';
import 'package:untitled3/app/ui/pages/login/login_page.dart';
import 'package:untitled3/app/ui/pages/oderSealed/oder_sealed_page.dart';
import 'package:untitled3/app/ui/pages/orderProduction/order_production_page.dart';
import 'package:untitled3/app/ui/pages/printreport/print_report_page.dart';
import 'package:untitled3/app/ui/pages/printJobOrder/print_Jobo_order_page.dart';
import 'package:untitled3/app/ui/pages/register/register_page.dart';
import 'package:untitled3/app/ui/pages/semiya/semiya_page.dart'; 
import 'package:untitled3/app/ui/pages/servidor/servidor_page.dart';


part './app_routes.dart';  
 
abstract class AppPages {
  static final pages = [
    
    GetPage(
      name: Routes.LOGIN, 
      page: () => LoginPage(),
      transition: Transition.native,
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.EXTRUSIONREPORT, 
      page: () => ExtrusionReport(),
      transition: Transition.native,
      binding: ExtrusionReportBinding(),
    ),
    GetPage(
      name: Routes.GATEPAGE, 
      page: () => GatewayPage(),
      transition: Transition.native,
      binding: GateBinding(),
    ),
    GetPage(
      name: Routes.ORDERSEALED, 
      page: () => OrderSealedPage(),
      transition: Transition.native,
      binding: OderSealedBinding(),
    ),
    GetPage(
      name: Routes.ORDERPRODUCTION , 
      page: () => OrderProductionPage(),
      transition: Transition.native,
      binding: OrderProductionBinding(),
    ),
    GetPage(
      name: Routes.PRINTREPORT, 
      page: () => PrintReportPage(),
      transition: Transition.native,
      binding: PrintReportBinding(),
    ),
    GetPage(
      name: Routes.PRINTORDER, 
      page: () => PrintReportPage(),
      transition: Transition.native,
      binding: PrintJobOrderBinding(),
    ),
    GetPage(
      name: Routes.REGISTER, 
      page: () => RegisterPage(),
      transition: Transition.native,
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.SEMIYA, 
      page: () => SemiyaPage(),
      transition: Transition.native,
      binding: SemiyaBinding(),
    ),
    GetPage(
      name: Routes.SERVIDOR, 
      page: () => ServidorPage(),
      transition: Transition.native,
      binding: ServidorBinding(),
    ),

    
  ];
}
