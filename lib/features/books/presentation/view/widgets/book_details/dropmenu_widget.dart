import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({super.key, this.title});
  final String? title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: Appcolors.white,
          border: Border(
            bottom: BorderSide(width: 1, color: Appcolors.border),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyTexT(
              text: title ?? '',
              type: Texttype.title,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Appcolors.Black,
            ),
          ],
        ),
      ).padh(12),
    );
  }
}
