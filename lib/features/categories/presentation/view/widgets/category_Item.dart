import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, this.categoryName, this.img, this.ontap});
  final String? categoryName;
  final String? img;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 163,
        height: 142,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Appcolors.shadows.withOpacity(.05),
              blurRadius: 20,
              spreadRadius: 0,
            )
          ],
          color: Appcolors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('storys'.svgPath),
            16.0.spacev,
            MyTexT(
              text: categoryName ?? 'روايات وقصص',
              type: Texttype.title,
            ),
          ],
        ),
      ),
    );
  }
}
