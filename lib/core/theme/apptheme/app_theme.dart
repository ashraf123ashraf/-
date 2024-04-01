import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      fontFamily: 'NotoArabic',
      cupertinoOverrideTheme: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          tabLabelTextStyle: TextStyle(fontFamily: 'NotoArabic', fontSize: 12),
          textStyle: TextStyle(fontFamily: 'NotoArabic'),
        ),
      ),
      textTheme: TextTheme(),
    );
  }
}
