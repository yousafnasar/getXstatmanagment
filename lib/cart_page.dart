import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cart_controller.dart';
import 'product.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartController cartController = Get.find();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text('Shopping Cart'),
      ),
      body: Obx(() {
        return cartController.cart.isEmpty
            ? Center(child: const Text('No items in the cart'))
            : ListView.builder(
                itemCount: cartController.cart.length,
                itemBuilder: (context, index) {
                  final product = cartController.cart[index];
                  return ListTile(
                    title: Text(product.name),
                    subtitle: Text('\$${product.price}'),
                    trailing: IconButton(
                      icon: const Icon(Icons.remove_circle),
                      onPressed: () {
                        cartController.removeProduct(product);
                        Get.snackbar(
                            'Removed', '${product.name} removed from cart');
                      },
                    ),
                  );
                },
              );
      }),
      bottomNavigationBar: Obx(() {
        return BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total: \$${cartController.totalPrice}'),
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar('Checkout', 'Proceed to checkout');
                  },
                  child: const Text('Checkout'),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
