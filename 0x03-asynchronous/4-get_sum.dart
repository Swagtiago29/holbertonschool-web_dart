import 'dart:convert';

import '4-util.dart';

Future calculateTotal() async {
  try {
    final rawUserData = await fetchUserData();
    final userData = jsonDecode(rawUserData);

    final rawOrderData = await fetchUserOrders(userData["id"]);
    final orderData = jsonDecode(rawOrderData);

    double total = 0;
    for(var product in orderData ){
      final price = await fetchProductPrice(product);
      total += double.parse(price);
      //total += price;
    }

    return total;
  } catch (e) {
    return -1;
  }
}