import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywallet/controller/wallet_controller.dart';

class TransactionHistoryScreen extends StatelessWidget {
  final WalletController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transactions')),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.transactions.length,
          itemBuilder: (context, index) =>
              ListTile(title: Text(controller.transactions[index])),
        ),
      ),
    );
  }
}
