import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShuffleWidget extends StatelessWidget {
  const ShuffleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset('arrow_up_down'.svgPath),
            8.0.spaceh,
            MyTexT(
              text: LocaleKeys.addrecent_subtitle.tr(),
              type: Texttype.normal,
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: SvgPicture.asset('gridview'.svgPath),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              icon: SvgPicture.asset(
                'listview'.svgPath,
                // color: Appcolors.grey,
              ),
            ),
          ],
        )
      ],
    );
  }
}
