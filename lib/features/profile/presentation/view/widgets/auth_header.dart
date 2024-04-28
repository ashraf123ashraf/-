import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Appcolors.lightGrey,
            ),
            image: DecorationImage(
              image: AssetImage(
                'profile_image'.imagepath,
              ),
            ),
            color: Appcolors.lightGrey,
            shape: BoxShape.circle,
          ),
        ),
        24.0.spacev,
        MyTexT(
          text: 'مرحبا',
          fontsize: 16,
          fontWeight: FontWeight.w500,
        ),
        MyTexT(
          text: 'اشرف عبد العظيم',
          fontsize: 16,
          fontWeight: FontWeight.w500,
        )
      ],
    );
  }
}
