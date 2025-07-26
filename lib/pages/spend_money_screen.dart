import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mywallet/controller/wallet_controller.dart';

class SpendMoneyScreen extends StatelessWidget {
  final WalletController controller = Get.find();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Spend Money')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter Amount'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double amount = double.tryParse(amountController.text) ?? 0.0;
                controller.spendMoney(amount);
                Get.back();
              },
              child: Text('Spend'),
            ),
          ],
        ),
      ),
    );
  }
}
