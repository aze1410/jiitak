import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme(BuildContext context) {
  return ThemeData(
        useMaterial3: true,
        textTheme: TextTheme(
          bodyText1:
              GoogleFonts.notoSansJp(), // Apply Noto Sans JP to bodyText1
          bodyText2:
              GoogleFonts.notoSansJp(), // Apply Noto Sans JP to bodyText2
          // Add more text styles as needed
        ),
      );
}
