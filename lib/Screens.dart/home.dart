import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerymart/Model/product.dart';
import 'package:grocerymart/Widgets/Product_card.dart';
import 'package:provider/provider.dart';

import '../Provider/product_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  Widget buildProductFeatureSection({
    required String title,
    required List<Product> items,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "See all",
                style: TextStyle(fontSize: 14, color: Colors.green[600]),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 248,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            padding: const EdgeInsets.only(left: 16),
            itemBuilder: (context, index) {
              final product = items[index];
              return Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: ProductCard(product: product),
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final fruits = productProvider.getByCategory('Fruits');
    final vegetables = productProvider.getByCategory('Vegetables');
    final beverages = productProvider.getByCategory('Beverages');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('assets/images/carrot.png', width: 30, height: 30),
          surfaceTintColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_rounded, color: Color(0xFF4C4F4D)),
                    Text(
                      'Lagos, Nigeria',
                      style: GoogleFonts.roboto(
                        color: Color(0xFF4C4F4D),
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                searchBox(),
                Image.asset('assets/images/banner.png'),
                SizedBox(height: 20),
        
                buildProductFeatureSection(
                  title: 'Exclusive Offer',
                  items: fruits,
                ),
                const SizedBox(height: 20),
                buildProductFeatureSection(
                  title: 'Best Selling',
                  items: vegetables,
                ),
                const SizedBox(height: 20),
                buildProductFeatureSection(
                  title: 'Top Drinks',
                  items: beverages,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xFFF2F3F2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        keyboardType: TextInputType.text,
        controller: searchController,
        cursorColor: Colors.black,
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Color(0xFF181B19), size: 22),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
          border: InputBorder.none,
          hintText: 'Search Store',
          hintStyle: GoogleFonts.roboto(
            color: Color(0xFF7C7C7C),
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
