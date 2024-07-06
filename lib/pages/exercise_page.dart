import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({super.key});
  static final String id = "/exercise";

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage>
    with SingleTickerProviderStateMixin {
  int _minutes = 2;

  List<String> exerciseInstructions = [
    "Stand tall with your feet shoulder-width apart.You can point your toes slightly outward for better balance.",
    "Tighten your abdominal muscles as if bracing yourself for a punch.",
    "Tighten your abdominal muscles as if bracing yourself for a punch.",
    "Tighten your abdominal muscles as if bracing yourself for a punch.",
    "Tighten your abdominal muscles as if bracing yourself for a punch.",
  ];
  late CustomTimerController _controller = CustomTimerController(
      vsync: this,
      begin: Duration(minutes: _minutes),
      end: Duration(),
      initialState: CustomTimerState.reset,
      interval: CustomTimerInterval.milliseconds);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.mainBackgroundColor,
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 10,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 25,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 10,
                    ),
                    Text(
                      "Legs",
                      style: GoogleFonts.openSans(
                          color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Container(
                  child: Column(
                    children: [
                      CustomTimer(
                          controller: _controller,
                          builder: (state, time) {
                            // Build the widget you want!🎉
                            return Text(
                              "${time.minutes}:${time.seconds}",
                              style: int.parse(time.minutes) >= 1
                                  ? GoogleFonts.openSans(
                                      color: Colors.white,
                                      fontSize: 70,
                                    )
                                  : GoogleFonts.openSans(
                                      color: Colors.red, fontSize: 70),
                            );
                          })
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xFF11487A),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        child: Text(
                          "START",
                          style: GoogleFonts.openSans(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () => _controller.start(),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                        child: Text(
                          "STOP",
                          style: GoogleFonts.openSans(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () => _controller.pause(),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    padding: EdgeInsets.all(20),
                    scrollDirection: Axis.vertical,
                    itemCount: exerciseInstructions.length,
                    prototypeItem: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        exerciseInstructions.first,
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "${index + 1}. ${exerciseInstructions[index]}",
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
