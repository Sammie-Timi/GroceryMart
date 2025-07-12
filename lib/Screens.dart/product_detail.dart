import 'package:flutter/material.dart';
import 'package:grocerymart/Model/product.dart';

class ProductView extends StatefulWidget {
  final Product product;
  const ProductView({super.key, required this.product});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
body: SafeArea(child: Column(
  children: [
    Stack(
      children: [
        Container(
          
        )
      ],
    )
  ],
)));
  }
}