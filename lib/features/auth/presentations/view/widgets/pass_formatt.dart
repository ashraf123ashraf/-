import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class PaaFormat extends StatelessWidget {
  const PaaFormat({super.key});

  @override
  Widget build(BuildContext context) {
    return MyTexT(
      text:
          'يجب أن تتكون من 8 الى 15 حرفاً وأن تحتوى على أرقام وأحرف كبيرة وصغيرة',
      fontsize: 12,
      fontWeight: FontWeight.w400,
      color: Appcolors.grey,
    );
  }
}
