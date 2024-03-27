import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class TextBar extends StatelessWidget {
  const TextBar({super.key, this.ontap, this.title});
  final VoidCallback? ontap;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyTexT(
          text: title ?? LocaleKeys.home_addrecent.tr(),
          type: Texttype.title,
          fontsize: 16,
        ),
        GestureDetector(
          onTap: ontap,
          child: Row(
            children: [
              MyTexT(
                text: LocaleKeys.home_more.tr(),
                color: Appcolors.main,
              ),
              6.0.spaceh,
              Icon(
                size: 12.75,
                Icons.arrow_forward_ios,
                color: Appcolors.main,
              )
            ],
          ),
        )
      ],
    );
  }
}
