import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UploadContain extends StatelessWidget {
  const UploadContain({super.key, this.ontap});
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 103,
        decoration: BoxDecoration(
          color: Appcolors.background,
          border: Border.all(
            width: 1,
            color: Appcolors.border,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('upload'.svgPath),
            10.0.spacev,
            MyTexT(
              text: 'قم بإرفاق كتابك هنا',
              fontWeight: FontWeight.w500,
              fontsize: 13,
              color: Appcolors.Black,
            ),
            10.0.spacev,
            MyTexT(
              text: 'صيغة الملف : word',
              fontWeight: FontWeight.w400,
              fontsize: 13,
              color: Appcolors.grey,
            )
          ],
        ),
      ),
    );
  }
}
