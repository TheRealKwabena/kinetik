import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinetik/components/google_auth_button.dart';
import 'package:kinetik/components/normal_auth_button.dart';
import 'package:kinetik/pages/registration_page.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = true;
  String loginEmail = "";
  String loginPassword = "";
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
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 60, vertical: 30.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Container(
                      child: Image.asset('images/kinetiklogo.jpg'),
                      height: 130,
                      width: 130,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Login",
                    style: GoogleFonts.openSans(
                        color: Colors.white, fontSize: 20.0),
                  ),
                  SizedBox(
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
                        onChanged: (String email) => {loginEmail = email},
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
                  SizedBox(
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
                        onChanged: (String password) =>
                            {loginPassword = password},
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
                  SizedBox(
                    height: 40,
                  ),
                  NormalAuthButton(
                      name: "Sign In",
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => const HomePage(),
                          ),
                        );
                        print(loginEmail + " " + loginPassword);
                      }),
                  SizedBox(
                    height: 40,
                  ),
                  Divider(
                    color: Colors.white,
                    height: 8,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GoogleAuthButton(
                    buttonName: "Login With Google",
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => const RegistrationPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Don’t have an account? Click here",
                        style: GoogleFonts.openSans(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          color: Color(0xFF11487A),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xFF17181C),
            ),
          ),
        ),
      ),
    );
  }
}
