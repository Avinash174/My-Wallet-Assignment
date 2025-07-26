import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:mywallet/controller/wallet_controller.dart';
import 'package:mywallet/routes/app_pages.dart';
import 'package:mywallet/routes/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  final WalletController controller = Get.put(WalletController());
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      initialRoute: AppRoutes.home,
      getPages: AppPages.routes,
    );
  }
}
