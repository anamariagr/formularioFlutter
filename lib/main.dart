import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled3/app/bindings/Login_binding.dart';
import 'package:untitled3/app/bindings/extrusionReport_binding.dart';
import 'package:untitled3/app/bindings/home_binding.dart';
import 'package:untitled3/app/bindings/pageview_binding.dart';
import 'package:untitled3/app/routes/app_pages.dart';
import 'package:untitled3/app/ui/themes/dart_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.PAGEVIEW ,
        theme: appThemeData,
        defaultTransition: Transition.fade,
        initialBinding: PageViewBinding(),
        getPages: AppPages.pages,
        
    )
  );
}