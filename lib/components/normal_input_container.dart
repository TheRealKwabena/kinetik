import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalInputContainer extends StatelessWidget {
  final String hintText;
  const NormalInputContainer({required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      ///input for email
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Color.fromRGBO(146, 153, 166, 0.8),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: GoogleFonts.openSans(
            fontSize: 15.0,
            color: Colors.black,
          ),
          textAlign: TextAlign.start,
          decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              hintStyle: GoogleFonts.openSans(
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
