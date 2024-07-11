import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinetik/auth/auth_provider.dart';
import 'package:kinetik/pages/auth_wrapper.dart';

import 'package:kinetik/pages/categories.dart';
import 'package:kinetik/pages/exercise_page.dart';
import 'package:provider/provider.dart';
import 'package:kinetik/pages/login_page.dart';
import 'package:kinetik/pages/registration_page.dart';
import 'package:kinetik/pages/settings_page.dart';
import 'package:kinetik/pages/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'pages/home_page.dart';

Future<void> main() async {
  runApp(const KineTikApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class KineTikApp extends StatelessWidget {
  const KineTikApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KinetikAuthProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: SplashScreen.id,
        theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(Theme.of(context).textTheme),
        ),
        routes: {
          SplashScreen.id: (context) => const SplashScreen(),
          RegistrationPage.id: (context) => const RegistrationPage(),
          AuthWrapper.id: (context) => AuthWrapper(),
          LoginPage.id: (context) => const LoginPage(),
          HomePage.id: (context) => const HomePage(),
          Categories.id: (context) => const Categories(),
          ExercisePage.id: (context) => const ExercisePage(),
          SettingsPage.id: (context) => const SettingsPage()
        },
      ),
    );
  }
}
