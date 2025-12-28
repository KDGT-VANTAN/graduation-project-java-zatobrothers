import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final base = ThemeData.light(useMaterial3: true);

ThemeData reimiTheme = base.copyWith(
  // ===== color =====
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF5FA8A3),
    primary: const Color(0xFF5FA8A3),
    secondary: const Color(0xFFE87A5D),
    tertiary: const Color(0xFFF4C563),
  ),

  // ===== text =====
  textTheme: GoogleFonts.notoSansJpTextTheme(base.textTheme),
  primaryTextTheme: GoogleFonts.notoSansJpTextTheme(base.primaryTextTheme),

  // ===== NavigationBar =====
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: Colors.white,
    elevation: 0,
    indicatorColor: const Color(0x225FA8A3),
    iconTheme: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const IconThemeData(
          color: Color(0xFF5FA8A3),
          size: 24,
        );
      }
      return const IconThemeData(
        color: Color(0xFF5F7673),
        size: 22,
      );
    }),
    labelTextStyle: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return GoogleFonts.notoSansJp(
          color: const Color(0xFF5FA8A3),
          fontSize: 12,
          fontWeight: FontWeight.w600,
        );
      }
      return GoogleFonts.notoSansJp(
        color: const Color(0xFF5F7673),
        fontSize: 10,
        fontWeight: FontWeight.w500,
      );
    }),
  ),
);
