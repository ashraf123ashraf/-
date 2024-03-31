import 'dart:io';

import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/locator.dart';
import 'package:flutter/material.dart';

class Utils {
  static String lang = 'ar';
  static String token = '';
  static GlobalKey<NavigatorState> get navigatorKey =>
      Ml<GlobalKey<NavigatorState>>();
  static GlobalKey<ScaffoldState> get scafoldkey =>
      Ml<GlobalKey<ScaffoldState>>();

  // use in main to rebuild all children after chnage lang
  static void rebuildAllchildren(BuildContext context) {
    void rebuild(Element e) {
      e.markNeedsBuild();
      e.visitChildren(rebuild);
    }

    (context as Element).visitChildren(rebuild);
  }

  static double getfileSize(File file) {
    int bytes = file.readAsBytesSync().lengthInBytes;
    double mb = bytes / 1024 * 1024; //1,048,576;
    return mb;
  }

  static get gethintStryle {
    return TextStyle(
      color: Appcolors.grey,
      fontWeight: FontWeight.w300,
      fontSize: 13,
    );
  }
}
