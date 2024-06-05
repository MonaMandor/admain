// core/theme/app_colors.dart
import 'package:flutter/material.dart';

class AppColors {
  static  Color primaryColor = Color(0xff1E6242);
  static  Color scaffoldBackground = HexColor("#F2F1EC");
  static  Color primaryTextColor =   Color(0xFF0C0C0C);
  static  Color secondaryTextColor = HexColor("#232E37");
  static  Color thirdTextColor =   HexColor("#0C0C0C");
  static  Color fourthTextColor =  Color(0x660C0C0C);

  

  
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
