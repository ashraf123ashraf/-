import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          color: Appcolors.main,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: MyTexT(
            textAlign: TextAlign.center,
            text: title,
            fontsize: 14,
            color: Appcolors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
