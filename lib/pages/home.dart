import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywallet/controller/wallet_controller.dart';
import '../routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  
  final WalletController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Wallet')),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Balance: ₹${controller.balance}',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Get.toNamed(AppRoutes.addMoney),
                child: Text('Add Money'),
              ),
              ElevatedButton(
                onPressed: () => Get.toNamed(AppRoutes.spendMoney),
                child: Text('Spend Money'),
              ),
              ElevatedButton(
                onPressed: () => Get.toNamed(AppRoutes.transactions),
                child: Text('Transactions'),
              ),
              ElevatedButton(
                onPressed: () => Get.toNamed(AppRoutes.profile),
                child: Text('Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
