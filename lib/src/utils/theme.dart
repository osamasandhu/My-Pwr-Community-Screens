import 'package:flutter/material.dart';
import 'package:my_pwr_community_screens/src/utils/color.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColors.primaryColor,
    ),
  );
}
