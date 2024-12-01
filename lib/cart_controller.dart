import 'package:get/get.dart';
import 'product.dart'; // Import the Product class

class CartController extends GetxController {
  // RxList for tracking products in the cart
  var cart = <Product>[].obs;

  // Method to add a product to the cart
  void addProduct(Product product) {
    cart.add(product);
  }

  // Method to remove a product from the cart
  void removeProduct(Product product) {
    cart.remove(product);
  }

  // Method to get the total price of products in the cart
  double get totalPrice {
    return cart.fold(0.0, (sum, item) => sum + item.price);
  }
}
