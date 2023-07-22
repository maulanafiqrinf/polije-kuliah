import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_application_1/model/product.dart';
import 'package:get/get.dart';

class DemoController extends GetxController {
  var cartitems = <Product>[].obs;
  int get cartCount => cartitems.length;
  double get totalAmount =>
      cartitems.fold(0.0, (sum, element) => sum + element.price);
  addToCart(Product product) {
    cartitems.add(product);
  }

  final storage = GetStorage();
  bool get isDark => storage.read('darkmode') ?? false;
  ThemeData get theme => isDark ? ThemeData.dark() : ThemeData.light();
  void changeTheme(bool val) => storage.write('darkmode', val);
}
