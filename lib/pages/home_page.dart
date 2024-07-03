import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:kinetik/components/featured_exercises_card.dart';
import 'package:kinetik/constants.dart';
import '../pages/categories.dart';
import '../components/body_category_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static final id = "/home";

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
        body: SingleChildScrollView(
          child: Column(
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
                        "Hello $name",
                        style: GoogleFonts.openSans(
                            color: Colors.white, fontSize: 20),
                      ),
                      IconButton(
                        onPressed: this.onPressed,
                        icon: Icon(
                          Icons.settings,
                          size: 30,
                        ),
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
                          FeaturedExercisesCard(
                              assetLink: "images/chest.jpg",
                              exercise: "Bench Press",
                              exerciseDescription: "Lorem ipsum fontasum "),
                          FeaturedExercisesCard(
                              assetLink: "images/chest.jpg",
                              exercise: "Bench Press",
                              exerciseDescription: "Lorem ipsum fontasum "),
                          FeaturedExercisesCard(
                              assetLink: "images/chest.jpg",
                              exercise: "Bench Press",
                              exerciseDescription: "Lorem ipsum fontasum "),
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
                            routeId: Categories.id,
                          ),
                          BodyCategoryCard(
                              assetLink: "images/arms.jpg",
                              bodyPart: "Arms",
                              routeId: Categories.id)
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
                            routeId: Categories.id,
                          ),
                          BodyCategoryCard(
                            assetLink: "images/cardio.jpg",
                            bodyPart: "Cardio",
                            routeId: Categories.id,
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
      ),
    );
  }
}
