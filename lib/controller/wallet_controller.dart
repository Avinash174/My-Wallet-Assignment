import 'package:get/get.dart';

class WalletController extends GetxController {
  var balance = 0.0.obs;
  var transactions = <String>[].obs;

  void addMoney(double amount) {
    balance.value += amount;
    transactions.add("Added ₹$amount");
  }

  void spendMoney(double amount) {
    if (balance.value >= amount) {
      balance.value -= amount;
      transactions.add("Spent ₹$amount");
    }
  }
}
