import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerymart/Model/product.dart';
import 'package:grocerymart/Provider/cart_provider.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatefulWidget {
  final Product product;
  final VoidCallback? onAdd;
  const ProductCard({super.key, required this.product, this.onAdd});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    return InkWell(
      onTap: (){
  //       Navigator.push(
  //   context,
  //   MaterialPageRoute(
  //     builder: (_) => ProductView(product: widget.product,),
  //   ),
  // );
      },
      child: Container(
        width: 174,
        height: 230,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFE2E2E2)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Colors.transparent,
              blurRadius: 8,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            Center(
              child: ClipRRect(
                child: Image.network(
                  widget.product.image,
                  width: 100,
                  height: 80,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                widget.product.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              child: Text(
                widget.product.category,
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              child: Row(
                children: [
                  Text(
                    '\$${widget.product.price.toStringAsFixed(2)}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      cartProvider.addToCart(widget.product);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Added to cart!',
                            style: GoogleFonts.roboto(color: Colors.black),
                          ),
                          backgroundColor: Colors.white,
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: Color(0xFF53B175),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
