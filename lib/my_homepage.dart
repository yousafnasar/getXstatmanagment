import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'product_list_page.dart';
import 'cart_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(title),
      ),
      body: Container(
        color: Colors.pink.shade50,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to the Shopping Cart!',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => ProductListPage());
                },
                child: const Text('Go to Product List'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => CartPage());
                },
                child: const Text('Go to Cart'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
