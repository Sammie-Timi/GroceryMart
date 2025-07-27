import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isDisabled;
  final Color bgColor;
  final Color disabledColor;
  final Color textColor;
  final String? image;
    final double elevation;

  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
    this.image,
    this.isDisabled = false,
    required this.bgColor,
    this.disabledColor = const Color(0xFFEAECF0),
    this.textColor = const Color(0xFFFFFFFF),
       this.elevation = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: isDisabled ? 0 : elevation,
      color: isDisabled ? disabledColor : bgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18),),
      child: InkWell(
        onTap: isDisabled ? null : onTap,
           borderRadius: BorderRadius.circular(19),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 18),
          decoration: BoxDecoration(
            color: isDisabled ? disabledColor : bgColor,
            borderRadius: BorderRadius.circular(19),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (image != null)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Image.asset(image!, width: 22, height: 24),
                  ),
                ),
      
              // Centered text
              Text(
                text,
                style: GoogleFonts.roboto(
                  color: isDisabled ? Colors.grey : textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
