import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class OnboaButton extends StatelessWidget {
  const OnboaButton({super.key, required this.title, this.ontap});
  final String title;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Appcolors.white),
          elevation: MaterialStatePropertyAll(1),
        ),
        child: MyTexT(
          text: title,
          color: Appcolors.Black,
        ),
        onPressed: ontap,
      ),
      alignment: Alignment.topLeft,
    );
  }
}
