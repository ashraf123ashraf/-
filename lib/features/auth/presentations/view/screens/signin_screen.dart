import 'package:fehres/core/helper/navigation_func.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/core/widgets/my_button.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/my_textform_field.dart';
import 'package:fehres/features/auth/presentations/view/widgets/field.dart';
import 'package:flutter/material.dart';

class LogiScreen extends StatelessWidget {
  const LogiScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        text: "تسجيل الدخول",
        iconData: Icons.arrow_back_ios,
        onTap: () => Navigator.pop(context),
      ),
      body: MyLoadingwidget(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                32.0.spacev,
                ItemField(
                  hint: "ادخل البريد الالكتروني",
                  label: "البريد الالكتروني",
                ),
                20.0.spacev,
                ItemField(
                  label: "كلمة المرور",
                  hint: "ادخل كلمة المرور",
                  fieldtype: FieldType.pass,
                ),
                8.0.spacev,
                GestureDetector(
                  onTap: () => namedRoute(
                    context,
                    RoutesName.forgetscreen,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: MyTexT(
                      text: 'نسيت كلمة المرور؟',
                      fontsize: 12,
                      fontWeight: FontWeight.w500,
                      color: Appcolors.main,
                    ),
                  ),
                ),
                20.0.spacev,
                MyButton(
                  title: 'تسجيل الدخول',
                ),
                350.0.spacev,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyTexT(
                      text: 'ليس لديك حساب ؟ ',
                      fontWeight: FontWeight.w300,
                      fontsize: 14,
                      color: Appcolors.Black,
                    ),
                    GestureDetector(
                      onTap: () {
                        namedRoute(context, RoutesName.signupscreen);
                      },
                      child: MyTexT(
                        text: 'حساب جديد',
                        fontWeight: FontWeight.w300,
                        fontsize: 14,
                        color: Appcolors.main,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ).padh(12),
          errorchild: Container(),
          isError: false,
          isLoading: false),
    );
  }
}
