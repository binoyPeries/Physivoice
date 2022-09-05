import 'package:flutter/material.dart';
import 'package:physivoice/ui/constants/colors.dart';

class PhysivoiceTheme {
  static ThemeData get theme {
    return ThemeData(
      primarySwatch: PhysivoiceColors.primaryMaterialColor,
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: PhysivoiceColors.primaryColor,
            width: 0.5,
          ),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        filled: true,
        fillColor: Colors.white,
        hintStyle: const TextStyle(
          color: PhysivoiceColors.hintColor,
        ),
      ),
    );
  }
}
