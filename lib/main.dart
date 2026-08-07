import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/login/login_screen.dart';

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
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const LoginScreen(),
    );
  }
}