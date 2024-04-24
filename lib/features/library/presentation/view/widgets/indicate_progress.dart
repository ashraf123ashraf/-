import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProgressIndicate extends StatelessWidget {
  const ProgressIndicate({super.key, this.progVal});
  final double? progVal;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'progress_indicate'.svgPath,
            ),
            12.0.spaceh,
            Stack(
              children: [
                Container(
                  width: 110,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Appcolors.ofWhite,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Container(
                  width: progVal == null ? 40 : progVal! * 110,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Appcolors.main,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            (progVal ?? 30.0 + 20.0).spaceh,
            Container(
              color: Appcolors.ofWhite,
              width: 32,
              height: 26,
              child: Center(
                child: MyTexT(
                  fontWeight: FontWeight.w500,
                  fontsize: 12,
                  color: Appcolors.main,
                  text: '${(progVal ?? 30).toInt()}%',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
