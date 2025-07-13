import 'package:flutter/material.dart';
import 'package:grocerymart/Model/product.dart';
import 'package:grocerymart/Services/product_service.dart';



class ProductProvider with ChangeNotifier {
  final List<Product> _products = ProductService.getProducts();

  List<Product> get products => _products;

  List<String> get categories =>
      _products.map((p) => p.category).toSet().toList();

  List<Product> getByCategory(String category) {
    return _products
        .where(
          (product) =>
              product.category.trim().toLowerCase() ==
              category.trim().toLowerCase(),
        )
        .toList();
  }
}
