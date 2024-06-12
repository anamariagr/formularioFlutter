 import 'package:flutter/material.dart';
//import 'package:untitled3/src/pages/register_page.dart';
//import 'package:untitled3/src/pages/login_page.dart';
import 'package:untitled3/src/pages/servidor_page.dart';
import 'package:untitled3/src/pages/gateway_page.dart';
import 'package:untitled3/src/pages/samiya_page.dart';
import 'package:untitled3/src/pages/order_sealed.dart';
import 'package:untitled3/src/pages/order_production.dart';
import 'package:untitled3/src/pages/extrusion_report.dart';
import 'package:untitled3/src/pages/print_job_order.dart';
import 'package:untitled3/src/pages/print_report.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login and Register',
      
      //initialRoute: LoginPage.id,
       initialRoute: 'samiya_page',
       routes: {
        //LoginPage.id : (context) => LoginPage(),
        //'register_page': (_) => RegistePage(), 
        //'servidor' : (_) => Servidor(),
        //'gateway_page' : (_) => GatewayPage(),
        'samiya_page' : (_) => SamiyaPage(),
        'order_sealed' : (_) => OrderSealedPage(),
        'order_production' : (_) => OrderProductionPage(),
        'extrusion_report' : (_) => ExtrusionReport(),
        'print_joborder' : (_) => PrintJobOrder(),
        'print_report' : (_) => PrintReportPage(),
      }, 
    );
  }
} 