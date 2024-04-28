import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/my_button.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/my_textform_field.dart';
import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      appBar: homeAppbar(
        text: 'تعديل الحساب',
        iconData: Icons.arrow_back_ios,
        // onTap: () => Navigator.pop(context),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            24.0.spacev,
            MyTexT(
              text: 'الاسم بالكامل',
              fontsize: 13,
              fontWeight: FontWeight.w500,
            ),
            8.0.spacev,
            Container(
              height: 44,
              child: MyTextFormField(
                hint: "الاسم",
                focusbordercolor: Appcolors.main,
                backgroundcolor: Appcolors.white,
                bordercolor: Appcolors.border,
              ),
            ),
            20.0.spacev,
            MyTexT(
              text: 'البريد الاكتروني',
              fontsize: 13,
              fontWeight: FontWeight.w500,
            ),
            8.0.spacev,
            Container(
              height: 44,
              child: MyTextFormField(
                hint: "البريد الالكتروني",
                focusbordercolor: Appcolors.main,
                backgroundcolor: Appcolors.white,
                bordercolor: Appcolors.border,
              ),
            ),
            20.0.spacev,
            Center(
              child: MyTexT(
                text: 'تغير كلمة المرور',
                color: Appcolors.main,
                fontsize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            24.0.spacev,
            Center(
              child: MyButton(title: 'حفظ'),
            )
          ],
        ),
      ).padh(20),
    );
  }
}
