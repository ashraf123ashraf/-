import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem(
      {super.key, this.ontap, this.img, this.title, this.islogout});
  final VoidCallback? ontap;
  final String? title;
  final String? img;
  final bool? islogout;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: Appcolors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      img!.svgPath,
                    ),
                    8.0.spaceh,
                    MyTexT(
                      text: title ?? "",
                      fontsize: 14,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.Black,
                    ),
                  ],
                ),
                islogout ?? false
                    ? Container()
                    : Container(
                        width: 24,
                        height: 24,
                        child: Center(
                          child: SvgPicture.asset(
                            'arrow_profile'.svgPath,
                          ),
                        ),
                      ),
              ],
            ).padv(12),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Appcolors.border),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
