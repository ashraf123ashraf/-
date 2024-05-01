import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/core/widgets/my_button.dart';
import 'package:fehres/core/widgets/my_textform_field.dart';
import 'package:fehres/features/auth/presentations/view/widgets/bottomcheckterms.dart';
import 'package:fehres/features/auth/presentations/view/widgets/field.dart';
import 'package:fehres/features/auth/presentations/view/widgets/pass_formatt.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        text: 'حساب جديد',
        iconData: Icons.arrow_back_ios,
        onTap: () => Navigator.pop(context),
      ),
      body: MyLoadingwidget(
          child: Container(
            child: Column(
              children: [
                32.0.spacev,
                ItemField(
                  label: "الاسم بالكامل",
                  hint: "ادخل الاسم بالكامل",
                ),
                20.0.spacev,
                ItemField(
                  label: "البريد الالكتروني",
                  hint: "ادخل البريد الالكتروني",
                ),
                20.0.spacev,
                ItemField(
                  fieldtype: FieldType.pass,
                  label: "كلمة المرور ",
                  hint: "ادخل كلمة المرور",
                ),
                8.0.spacev,
                PaaFormat(),
                32.0.spacev,
                BottomCheckTerms(
                  onChanged: (value) {},
                  value: true,
                  text: "أوافق علي تلقي اَخر الأخبار والعروض الخاصة بفهرس",
                ),
                16.0.spacev,
                BottomPrivacyPolicy(
                  onChanged: (value) {},
                  value: true,
                  text: "لقد قرأت وأوافق علي ",
                  text1: "سياسة الخصوصية والاستخدام",
                ),
                24.0.spacev,
                MyButton(
                  title: 'انشاء حساب جديد',
                )
              ],
            ),
          ).padh(12),
          errorchild: Container(),
          isError: false,
          isLoading: false),
    );
  }
}
