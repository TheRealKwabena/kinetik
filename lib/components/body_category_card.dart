import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class BodyCategoryCard extends StatelessWidget {
  final String assetLink;
  final String bodyPart;

  BodyCategoryCard({required this.assetLink, required this.bodyPart});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135,
      width: 125,
      decoration: BoxDecoration(
        color: Constants.greyColor,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Image(
              image: AssetImage(this.assetLink),
              height: 85,
            ),
          ),
          Text(
            bodyPart,
            style: GoogleFonts.openSans(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
