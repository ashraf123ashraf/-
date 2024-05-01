import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class SliderButton extends StatelessWidget {
  const SliderButton({super.key, this.onpress, required this.title});
  final VoidCallback? onpress;
  final String title;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress,
      child: MyTexT(
        text: title,
        color: Appcolors.main,
      ).padh(14).padv(6),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Appcolors.white,
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}
