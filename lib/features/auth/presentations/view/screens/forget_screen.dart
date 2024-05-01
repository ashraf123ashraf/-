import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/core/widgets/my_button.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/features/auth/presentations/view/widgets/field.dart';
import 'package:flutter/material.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        text: "استعادة كلمة المرور",
        iconData: Icons.arrow_back_ios,
        onTap: () => Navigator.pop(context),
      ),
      body: MyLoadingwidget(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              32.0.spacev,
              MyTexT(
                text: 'نسيت كلمة المرور؟',
                fontsize: 14,
                fontWeight: FontWeight.w500,
                color: Appcolors.Black,
              ),
              16.0.spacev,
              MyTexT(
                text:
                    'سيتم ارسال كود تاكيد عن طريق البريد الالكتروني لتحديد كلمة مرور جديدة ',
                fontsize: 14,
                fontWeight: FontWeight.w500,
                color: Appcolors.Black,
              ),
              32.0.spacev,
              ItemField(
                label: "البريد الالكتروني",
                hint: "ادخل البريد الالكتروني",
              ),
              24.0.spacev,
              MyButton(title: 'ارسال الكود'),
            ],
          ),
        ).padh(12),
        errorchild: Container(),
        isError: false,
        isLoading: false,
      ),
    );
  }
}
