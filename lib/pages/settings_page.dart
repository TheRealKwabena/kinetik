import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinetik/constants.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  static final String id = "/settings";

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    double? scrolledUnderElevation;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.mainBackgroundColor,
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: double.infinity,
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
                child: Column(
                  children: [
                    Row(
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
                          "Settings",
                          style: GoogleFonts.openSans(
                              color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("images/neymar.jpg"),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.12,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Kobbie",
                              style: GoogleFonts.openSans(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "john.doe@gmail.com",
                              style: GoogleFonts.openSans(
                                  fontSize: 12, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListView.separated(
                itemCount: 4,
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
                itemBuilder: (context, index) {
                  return ListTile(
                    tileColor: Constants.settingsBlue,
                    title: Text(
                      _getTitle(index),
                      style: GoogleFonts.openSans(
                          color: Colors.white, fontSize: 20),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String _getTitle(int index) {
  switch (index) {
    case 0:
      return 'Edit Email';
    case 1:
      return 'Change Password';
    case 2:
      return 'Edit Fitness Parameters';
    case 3:
      return 'Upload Profile Picture';
    default:
      return '';
  }
}
