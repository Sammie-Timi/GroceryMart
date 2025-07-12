import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerymart/Screens.dart/Cart_list.dart';
import 'package:grocerymart/Screens.dart/category_list.dart';
import 'package:grocerymart/Screens.dart/home.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int currentIndex = 0;

  onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [HomeScreen(), CategoryView(), CartScreen()];
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(
        bucket: bucket,
        child: IndexedStack(index: currentIndex, children: screens),
      ),

      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
        height: 100,
      
       decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade100, width: 3),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              boxShadow: [BoxShadow(color: Colors.black)]
            ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MaterialButton(
              height: double.infinity,
              animationDuration: Duration(seconds: 2),
              minWidth: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () => onTabTapped(0),
              child: Column(
                children: [
                  ImageIcon(
                    AssetImage('assets/icons/store.png'),
                    color: currentIndex == 0
                        ? Color(0xFF53B175)
                        : Colors.black,
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Shop",
                    style: GoogleFonts.poppins(
                      color: currentIndex == 0
                          ? Color(0xFF53B175)
                          : Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              animationDuration: Duration(seconds: 1),
              minWidth: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              onPressed: () => onTabTapped(1),
              child: Column(
                children: [
                  ImageIcon(
                    AssetImage('assets/icons/exp.png'),
                    color: currentIndex == 1
                        ? Color(0xFF53B175)
                        : Colors.black,
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Explore",
                    style: GoogleFonts.poppins(
                      color: currentIndex == 1
                          ? Color(0xFF53B175)
                          : Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            
            MaterialButton(
              animationDuration: Duration(seconds: 1),
              minWidth: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              onPressed: () => onTabTapped(2),
              child: Column(
                children: [
                  ImageIcon(
                    AssetImage('assets/icons/cart.png'),
                    color: currentIndex == 2
                        ? Color(0xFF53B175)
                        : Colors.black,
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Cart",
                    style: GoogleFonts.poppins(
                      color: currentIndex == 2
                          ? Color(0xFF53B175)
                          : Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              animationDuration: Duration(seconds: 1),
              minWidth: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              onPressed: () => onTabTapped(3),
              child: Column(
                children: [
                  ImageIcon(
                    AssetImage('assets/icons/bookmark 1.png'),
                    color: currentIndex == 3
                        ? Color(0xFF53B175)
                        : Colors.black,
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Favourite",
                    style: GoogleFonts.poppins(
                      color: currentIndex == 3
                          ? Color(0xFF53B175)
                          : Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              animationDuration: Duration(seconds: 1),
              minWidth: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              onPressed: () => onTabTapped(3),
              child: Column(
                children: [
                  ImageIcon(
                    AssetImage('assets/icons/user 1.png'),
                    color: currentIndex == 3
                        ? Color(0xFF53B175)
                        : Colors.black,
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Account",
                    style: GoogleFonts.poppins(
                      color: currentIndex == 3
                          ? Color(0xFF53B175)
                          : Colors.black,
                      fontSize: 12,
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
