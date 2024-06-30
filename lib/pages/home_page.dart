import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:kinetik/constants.dart';

import '../components/body_category_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static final id = "/homepage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "Kobbie";
  void onPressed() {
    print("Navigate to Settings");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.mainBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 4,
                    offset: Offset(0.0, 4.0),
                  )
                ],
                color: Constants.darkShadeBlue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hello Kobbie",
                      style: GoogleFonts.openSans(
                          color: Colors.white, fontSize: 20),
                    ),
                    IconButton(
                      onPressed: this.onPressed,
                      icon: Icon(Icons.settings),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Featured Exercises",
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Constants.greyColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: 230,
                          width: 190,
                          child: Column(
                            children: [
                              Text(
                                "Bench Press",
                                style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Categories",
                    style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BodyCategoryCard(
                          assetLink: "images/legs.jpg",
                          bodyPart: "Legs",
                        ),
                        BodyCategoryCard(
                          assetLink: "images/arms.jpg",
                          bodyPart: "Arms",
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BodyCategoryCard(
                          assetLink: "images/chest.jpg",
                          bodyPart: "Chest",
                        ),
                        BodyCategoryCard(
                          assetLink: "images/cardio.jpg",
                          bodyPart: "Cardio",
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
