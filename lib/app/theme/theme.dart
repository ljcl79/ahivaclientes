import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AhivaColors {
  static final red = Color(0xFF8B0000);
  static final funnySky = Color(0xFF4D16FF);
  static final white = Colors.white;
  static final actionRed = Color(0xFFB22222);
  static final funnyPurple2 = Color(0xFF4D16FF);
  static final funnyPurple3 = Color(0xFF7D28FF);
  static final black = Color(0xFF09162B);
  static final textBlue = Color(0xFF2800ED);
  static final actionLove = Color(0xFFFF154F);
}

final AhivaGradien = [
  AhivaColors.actionRed,
  AhivaColors.red,
];

final AhivaTheme = ThemeData(
  backgroundColor: AhivaColors.white,
  textTheme: GoogleFonts.quicksandTextTheme().apply(
    bodyColor: AhivaColors.red,
    displayColor: AhivaColors.red,
  ),
  iconTheme: IconThemeData(
    color: AhivaColors.red,
  ),
);
