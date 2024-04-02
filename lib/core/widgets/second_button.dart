import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SecondButton extends StatelessWidget {
  const SecondButton({
    super.key,
    this.backcolor,
    this.fontcolor,
    this.img,
    this.title,
  });
  final String? title;
  final String? img;
  final Color? fontcolor;
  final Color? backcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Appcolors.white,
          border: Border.all(
            width: 1,
            color: Appcolors.main,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTexT(
              text: title ?? '',
              color: fontcolor ?? Appcolors.white,
              fontsize: 14,
              fontWeight: FontWeight.w500,
            ),
            8.0.spaceh,
            SvgPicture.asset(img!.svgPath)
          ],
        ),
      ),
    );
  }
}
