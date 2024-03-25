import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class OnboaButton extends StatelessWidget {
  const OnboaButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Appcolors.cards),
          elevation: MaterialStatePropertyAll(1),
        ),
        child: MyTexT(
          text: title,
          color: Appcolors.Black,
        ),
        onPressed: () {},
      ),
      alignment: Alignment.topLeft,
    );
  }
}
