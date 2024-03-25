import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

void alertdialog(
    BuildContext context,
    Color backgroundcolor,
    String? title,
    String? content,
    TextStyle? textStyle,
    AlignmentGeometry? alignment,
    String subtitle1,
    String subtitle2,
    VoidCallback? actionbutton1,
    VoidCallback? actionbutton2) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          alignment: alignment ?? Alignment.center,
          title: MyTexT(
            text: title ?? '',
          ),
          content: MyTexT(
            text: content ?? '',
            textStyle: textStyle,
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            GestureDetector(
              onTap: actionbutton1,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: MyTexT(
                  text: subtitle1,
                ),
              ),
            ),
            GestureDetector(
              onTap: actionbutton1,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: MyTexT(
                  text: subtitle2,
                ),
              ),
            )
          ],
        );
      });
}
