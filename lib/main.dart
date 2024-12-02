import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statmanagment/cart_controller.dart';
import 'my_Homepage.dart';

void main() {
  Get.put(CartController()); // Registering CartController
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Shopping Cart App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Shopping Cart App'),
    );
  }
}
