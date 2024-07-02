import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinetik/components/google_auth_button.dart';
import 'package:kinetik/components/normal_input_container.dart';
import 'package:kinetik/components/normal_auth_button.dart';
import 'login_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});
  static final String id = "/register";

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool isVisible = true;
  String userEmail = "";
  String username = "";
  String userPassword = "";
  void changeVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF17181C),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Container(
                      height: 130,
                      width: 130,
                      child: Image.asset('images/kinetiklogo.jpg'),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Create An Account",
                    style: GoogleFonts.openSans(
                        color: Colors.white, fontSize: 20.0),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    ///input for email
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(146, 153, 166, 0.8),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (String name) {
                          username = name;
                        },
                        style: GoogleFonts.openSans(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            hintText: "Name",
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    ///input for email
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(146, 153, 166, 0.8),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: GoogleFonts.openSans(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                        onChanged: (String email) => {userEmail = email},
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            hintText: "Email",
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(146, 153, 166, 0.8),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: TextField(
                        obscureText: isVisible,
                        style: GoogleFonts.openSans(
                          fontSize: 15.0,
                          color: Colors.black,
                        ),
                        onChanged: (String password) {
                          print(password);
                          userPassword = password;
                        },
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () => {
                                changeVisibility(),
                              },
                              child: isVisible ==
                                      true // ternary operator to render password visibility icon
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off),
                            ),
                            hintText: "Password",
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.openSans(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  NormalAuthButton(
                    name: "Register",
                    onPressed: () {
                      print("$username $userEmail $userPassword");
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    color: Colors.white,
                    height: 8,
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GoogleAuthButton(
                    buttonName: "Continue With Google",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, LoginPage.id);
                    },
                    child: Text(
                      "Already have an account? Click here",
                      style: GoogleFonts.openSans(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          color: Color(0xFF11487A),
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
