import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerymart/Model/category.dart';
import 'package:grocerymart/Widgets/product_list.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Find Product',
          style: GoogleFonts.roboto(
            color: Color(0xFF181725),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchBox(),
            SizedBox(height: 27),
            Expanded(
              child: Container(
                color: Colors.transparent,
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 2,
                  ),
                  itemCount: category.length,
                  itemBuilder: (context, int index) => InkWell(
                    splashColor: category[index].color,
                    borderRadius: BorderRadius.circular(18),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => CategoryProductListScreen(
                            categoryTitle: category[index].title,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 175,
                      height: 189,
                      padding: EdgeInsets.symmetric(horizontal: 31),
                      decoration: BoxDecoration(
                        color: category[index].bgcolor,
                        border: Border.all(color: category[index].color),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 27),
                          Image.asset(category[index].image),
                          SizedBox(height: 27),
                          Center(
                            child: Text(
                              category[index].title,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.roboto(
                                color: Color(0xFF181725),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
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
