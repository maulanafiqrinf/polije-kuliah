import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import '../controller/demoController.dart';
import '../controller/purchase.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class HomePage extends StatelessWidget {
  final purchase = Get.put(Purchase()); // controller inti
  DemoController cart = Get.find(); // controller cart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ), // AppBar
      bottomSheet: SafeArea(
        child: Card(
          elevation: 12.0,
          margin: EdgeInsets.zero,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
            ), // BoxDecoration
            height: 65,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Icon(Icons.shopping_cart_rounded,
                          size: 40, color: Colors.white), // Icon
                      Positioned(
                        right: 5,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ), // BoxDecoration
                          child: Center(
                            child: GetX<DemoController>(builder: (controller) {
                              return Text(
                                '${controller.cartCount}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11.0), // TextStyle
                              ); // Text
                            }), // GetX
                          ), // Center
                        ), // Container
                      ),
                    ], // Positioned
                  ), // Stack
                  GetX<DemoController>(builder: (controller) {
                    return Text(
                      'Total Amount - ${controller.totalAmount}',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 16.0), // TextStyle
                    ); // Text
                  }), // GetX
                  IconButton(
                      onPressed: () => Get.toNamed('/cart',
                          arguments:
                              "Home Page To Demo Page -> Passing arguments"),
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      )) // Icon // IconButton
                ], // Row
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: GetX<Purchase>(builder: (controller) {
          return ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ), // RoundedRectangleBorder
                      child: Column(
                        children: [
                          Image.network(
                            'https://img.alicdn.com/tfs/TB1e.XyReL2gK0jSZFmXXc7iXXa-990-400.png',
                            fit: BoxFit.cover,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        controller.products[index].productName,
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16.0), // TextStyle
                                      ), // Text
                                      Text(
                                          controller.products[index]
                                              .productDescription,
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12.0)), // TextStyle /)
                                    ],
                                  ), 
                                ), 
                              ), 
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    onPressed: () => cart
                                        .addToCart(controller.products[index]),
                                    child: Text(
                                      'Shop Now',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12.0), 
                                    )),
                              ) 
                            ],
                          ),
                        ],
                      ),
                    ),
                  ));
        }), 
      ),
    ); 
  }
}
