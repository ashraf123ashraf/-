import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class Alerts {
  static Future dialoge(
      Widget child,
      BuildContext context,
      Color backgroundcolor,
      EdgeInsets? insetsPadding,
      AlignmentGeometry alignment) {
    return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          clipBehavior: Clip.hardEdge,
          backgroundColor: backgroundcolor,
          insetPadding: insetsPadding ?? const EdgeInsets.all(40),
          surfaceTintColor: backgroundcolor,
          alignment: alignment,
          child: child,
        );
      },
    );
  }

  static Future yesOrnoDialoge(BuildContext context, String title) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: MyTexT(
              text: title,
            ),
          );
        });
  }
}
