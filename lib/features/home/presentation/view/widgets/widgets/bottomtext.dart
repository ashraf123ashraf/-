import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/mycheck_box.dart';
import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  const BottomText({super.key, this.ontap});
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        MycheckBox(
          onChanged: (value) {},
          value: true,
        ),
        8.0.spaceh,
        MyTexT(
          text: 'لقد قرأت واوافق علي ',
          fontWeight: FontWeight.w400,
          fontsize: 12,
          color: Appcolors.Black,
        ),
        GestureDetector(
          onTap: ontap,
          child: MyTexT(
            text: 'سياسة النشر',
            type: Texttype.underlined,
          ),
        ),
        MyTexT(
          text: ' الخاصة بفهرس',
          fontWeight: FontWeight.w400,
          fontsize: 12,
          color: Appcolors.Black,
        ),
      ],
    );
  }
}
