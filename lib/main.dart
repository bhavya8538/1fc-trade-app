import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/login/login_screen.dart';
import 'screens/login/desktop_login.dart';

void main() {
  runApp(const OneFCTrade());
}

class OneFCTrade extends StatelessWidget {
  const OneFCTrade({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "1FC Trade",
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        scaffoldBackgroundColor: const Color(0xFFF4F4ED),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF071F1D),
        textTheme: GoogleFonts.poppinsTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),

      // Change this to dark while designing/testing
       themeMode: ThemeMode.system,

      home: const LoginRouter(),
    );
  }
}

class LoginRouter extends StatelessWidget {
  const LoginRouter({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    if (width >= 700) {
      return const DesktopLogin();
    }

    return const LoginScreen();
  }
}