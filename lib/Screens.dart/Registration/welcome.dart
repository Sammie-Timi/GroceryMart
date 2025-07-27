import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerymart/Screens.dart/Registration/signin.dart';
import 'package:grocerymart/Widgets/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/wlc.png', fit: BoxFit.cover),
          ),
          Positioned.fill(
            top: 454,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Image.asset('assets/images/carrot.png', color: Colors.white),
                  SizedBox(height: 35),
                  Text(
                    'Welcome \n to our store',
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Get your groceries in as fast as one hour',
                    style: GoogleFonts.roboto(
                      color: Color(0xFCFCFCB2),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                   SizedBox(height: 40),
                  CustomButton(
                    bgColor: Color(0xFF53B175),
                    text: 'Get Started',
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => SignIn()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
