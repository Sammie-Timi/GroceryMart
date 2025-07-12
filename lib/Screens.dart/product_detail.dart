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
          width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    image: DecorationImage(
                      image: NetworkImage(widget.product.image),
                      fit: BoxFit.contain,
                    ),
                  ),
        ),
  Positioned(
                  top: 16,
                  left: 16,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios, size: 24),
                  ),
                ),
      ],
    )
  ],
)));
  }
}