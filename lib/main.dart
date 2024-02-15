import 'package:flutter/material.dart';
import 'package:logistics_optimizer_app/features/route_service/route_service_home.dart';
import 'package:logistics_optimizer_app/features/route_service/route_service_sub_category.dart';
import 'package:logistics_optimizer_app/screens/homepage.dart';
import 'package:logistics_optimizer_app/screens/onboarding_screen.dart';
import 'package:logistics_optimizer_app/theme/theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.light(),
    // theme: DTheme.DLightTheme,
    home: OnboardingScreen(),
  ));
}

class DTheme {
  static ThemeData get DLightTheme => ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.blue,
          centerTitle: true,
          titleTextStyle: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
