import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BodyHeader extends StatelessWidget {
  const BodyHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Row(
                children: [
                  MyTexT(
                    text: 'المؤلف : ',
                    fontsize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  MyTexT(
                    text: "ساندرا سراج",
                    fontsize: 14,
                    fontWeight: FontWeight.w500,
                    color: Appcolors.main,
                  ),
                ],
              ),
              16.0.spacev,
              Row(
                children: [
                  MyTexT(
                    text: 'دار النشر : ',
                    fontsize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  MyTexT(
                    text: "دار دون",
                    fontsize: 14,
                    fontWeight: FontWeight.w500,
                    color: Appcolors.main,
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: SvgPicture.asset(
            'heart'.svgPath,
          ),
        ),
      ],
    ).padh(12);
  }
}
