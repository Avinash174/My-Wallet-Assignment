import 'package:get/get.dart';
import 'package:mywallet/pages/add_money_screen.dart';
import 'package:mywallet/pages/home.dart';
import 'package:mywallet/pages/profile_screen.dart';
import 'package:mywallet/pages/spend_money_screen.dart';
import 'package:mywallet/pages/transaction_history_screen.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: AppRoutes.home, page: () => HomeScreen()),
    GetPage(name: AppRoutes.profile, page: () => ProfileScreen()),
    GetPage(name: AppRoutes.addMoney, page: () => AddMoneyScreen()),
    GetPage(name: AppRoutes.spendMoney, page: () => SpendMoneyScreen()),
    GetPage(
      name: AppRoutes.transactions,
      page: () => TransactionHistoryScreen(),
    ),
  ];
}
