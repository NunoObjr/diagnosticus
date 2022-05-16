import 'package:diagnosticus_action_iv/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modules/home/presenter/home_binding.dart';
import 'routes/pages.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    enableLog: true,
    locale: const Locale('pt', 'BR'),
    getPages: DiagnosticusPages.routes,
    initialBinding: HomeBinding(),
    initialRoute: DiagnosticusRoutes.home,
    debugShowCheckedModeBanner: false,
  ));
}