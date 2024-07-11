import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth/auth_provider.dart';
import 'home_page.dart';
import 'login_page.dart';

class AuthWrapper extends StatefulWidget {
  static final String id = "/wrapper";
  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<KinetikAuthProvider>(context);

    return StreamBuilder<User?>(
      stream: authProvider.user != null
          ? Stream.value(authProvider.user)
          : Stream.empty(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          print("firebase connected");
          User? user = snapshot.data;
          if (user == null) {
            return LoginPage();
          }
          return HomePage();
        }
        print("firebase not connected");
        return Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
