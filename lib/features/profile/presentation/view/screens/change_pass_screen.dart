import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/my_button.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/my_textform_field.dart';
import 'package:flutter/material.dart';

class ChangePass extends StatelessWidget {
  const ChangePass({super.key});
  Column singleField({
    String? title,
    Color? bordercolor,
    Color? fillcolor,
    Color? focusbordercolor,
    Color? focusfillcolor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTexT(
          color: Appcolors.Black,
          text: title ?? '',
          fontsize: 13,
          fontWeight: FontWeight.w500,
        ),
        4.0.spacev,
        Container(
          height: 44,
          child: Center(
            child: MyTextFormField(
              backgroundcolor: fillcolor,
              bordercolor: bordercolor,
              focusbackgroundcolor: focusfillcolor,
              focusbordercolor: focusbordercolor,
              hint: title ?? '',
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        text: 'تغير كلمة المرور',
        iconData: Icons.arrow_back_ios,
        onTap: () => Navigator.pop(context),
      ),
      body: Container(
        child: Column(
          children: [
            24.0.spacev,
            singleField(
              title: "كلمة المرور الحالية",
              bordercolor: Appcolors.border,
              fillcolor: Appcolors.white,
            ),
            20.0.spacev,
            singleField(
              title: "كلمة المرور الجديدة",
              bordercolor: Appcolors.border,
              fillcolor: Appcolors.white,
            ),
            10.0.spacev,
            MyTexT(
              text:
                  'يجب أن تتكون من 8 الى 15 حرفاً وأن تحتوى على أرقام وأحرف كبيرة وصغيرة',
              color: Appcolors.grey,
              fontsize: 12,
              fontWeight: FontWeight.w400,
            ),
            24.0.spacev,
            MyButton(title: 'اعادة تعيين كلمة المرور'),
          ],
        ),
      ).padh(12),
    );
  }
}
