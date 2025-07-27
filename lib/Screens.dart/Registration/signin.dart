import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerymart/Screens.dart/Registration/verification.dart';
import 'package:grocerymart/Widgets/custom_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/images/mask.png', fit: BoxFit.cover),
              Positioned(
                left: 283,
                top: 30,
                child: Image.asset('assets/images/mask2.png'),
              ),
            ],
          ),
          SizedBox(height: 50),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get Your groceries\nwith nectar',
                  style: GoogleFonts.roboto(
                    color: Color(0xFF030303),
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 31),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => SignInWithNumber()),
                    );
                  },
                  child: TextFormField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.phone,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      enabled: false,
                      focusColor: Colors.black,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                      ),

                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'assets/icons/flag.png',
                              width: 34,
                              height: 23,
                            ),
                            SizedBox(width: 12),
                            Text(
                              '+234',
                              style: GoogleFonts.roboto(
                                color: Color(0xFF030303),
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Center(child: Text('or connect with social media')),
                SizedBox(height: 37),
                CustomButton(
                  text: 'Continue with Google',
                  onTap: () {},
                  bgColor: Color(0xFF5383EC),
                  image: ('assets/icons/google.png'),
                ),
                SizedBox(height: 20),
                CustomButton(
                  text: 'Continue with Facebook',
                  onTap: () {},
                  bgColor: Color(0xFF4A66AC),
                  image: ('assets/icons/f.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget SignInWithNumber() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.white, blurRadius: 90)],
                ),
                width: double.infinity,
                height: 260,
                child: Image.asset('assets/images/Rect.png', fit: BoxFit.cover),
              ),
              Positioned(
                top: 56,
                left: 25,
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios_new),
                        ),
                        SizedBox(height: 65),
                        Text(
                          'Enter your mobile number',
                          style: GoogleFonts.roboto(
                            color: Color(0xFF181725),
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 28),
                        Text(
                          'Mobile Number',
                          style: GoogleFonts.roboto(
                            color: Color(0xFF7C7C7C),
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextFormField(
              cursorColor: Colors.black,
              keyboardType: TextInputType.phone,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                fillColor: Colors.transparent,
                filled: true,
                focusColor: Colors.black,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFE2E2E2)),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/icons/flag.png',
                        width: 34,
                        height: 23,
                      ),
                      SizedBox(width: 12),
                      Text(
                        '+234',
                        style: GoogleFonts.roboto(
                          color: Color(0xFF030303),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF53B175),
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => Verification()),
          );
        },
        child: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}



