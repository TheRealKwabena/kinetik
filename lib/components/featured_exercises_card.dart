import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

class FeaturedExercisesCard extends StatelessWidget {
  final String assetLink;
  final String exercise;
  final String exerciseDescription;

  FeaturedExercisesCard(
      {required this.assetLink,
      required this.exercise,
      required this.exerciseDescription});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Constants.greyColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 4,
                offset: Offset(0.0, 4.0),
              )
            ]),
        height: 230,
        width: 190,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image(
                image: AssetImage(this.assetLink),
                height: 150,
                width: 150,
              ),
            ),
            Text(
              this.exercise,
              style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              this.exerciseDescription,
              style: GoogleFonts.openSans(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
