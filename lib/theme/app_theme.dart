import 'package:flutter/material.dart';
import 'package:e_mitra/theme/colors.dart';

@immutable
class AppTheme{
  static const colors=AppColors();
  const AppTheme._();
  static ThemeData define() {
    return ThemeData(
    primaryColor:Color(0xFF011e96),
    primaryColorDark:Color(0xFF011e96)
    );


  }

}
