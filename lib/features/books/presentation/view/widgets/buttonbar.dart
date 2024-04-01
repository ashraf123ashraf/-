import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class ButtonBaritem extends StatelessWidget {
  const ButtonBaritem({super.key, this.text, this.isActive, this.ontab});
  final String? text;
  final bool? isActive;
  final VoidCallback? ontab;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: ontab,
      child: MyTexT(text: text ?? 'روايات'),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          isActive! ? Appcolors.main : Appcolors.white,
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side: BorderSide(
                color: isActive! ? Appcolors.main : Appcolors.border,
                width: isActive! ? 0 : 1),
          ),
        ),
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 9, horizontal: 20),
        ),
      ),
    );
  }
}
