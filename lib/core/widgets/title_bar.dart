import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/divider.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../theme/colortheme/colors.dart';

class BodyTitleBar extends StatelessWidget {
  const BodyTitleBar(
      {super.key,
      required this.title,
      required this.subtitle,
      this.end,
      this.thereEnd,
      this.num});
  final String title;
  final String subtitle;
  final String? end;
  final int? num;
  final bool? thereEnd;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyTexT(
          text: title,
          type: Texttype.title,
        ),
        Row(
          children: [
            MyTexT(
              text: '${thereEnd ?? true ? 3 : ''} $subtitle',
              fontsize: 12,
              fontWeight: FontWeight.w500,
              color: Appcolors.grey,
            ),
            8.0.spaceh,
            thereEnd ?? true
                ? MyDivider(
                    isHori: true,
                    height: 10,
                  )
                : Container(),
            8.0.spaceh,
            MyTexT(
              text: end ?? 'عرض المزيد',
              fontsize: 12,
              fontWeight: FontWeight.w500,
              color: Appcolors.main,
            ),
          ],
        )
      ],
    );
  }
}
