import 'package:fehres/core/utils/extenstions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialBar extends StatelessWidget {
  const SocialBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: SvgPicture.asset('face'.svgPath),
        ),
        24.0.spaceh,
        SizedBox(
          width: 24,
          height: 24,
          child: SvgPicture.asset('twi'.svgPath),
        ),
        24.0.spaceh,
        SizedBox(
          width: 24,
          height: 24,
          child: SvgPicture.asset('inst'.svgPath),
        ),
      ],
    );
  }
}
