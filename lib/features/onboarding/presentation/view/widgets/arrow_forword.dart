import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Arrowforwoard extends StatelessWidget {
  const Arrowforwoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.flip(
        flipX: Utils.lang == Locale('en', 'US').languageCode,
        child: SvgPicture.asset('arrow'.svgPath));
  }
}
