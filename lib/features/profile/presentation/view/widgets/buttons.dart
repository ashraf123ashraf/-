import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_button.dart';
import 'package:fehres/core/widgets/second_button.dart';
import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  const ProfileButtons({super.key, this.signUp, this.signin});
  final VoidCallback? signin;
  final VoidCallback? signUp;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 160,
          height: 44,
          child: MyButton(
            ontap: signUp,
            title: 'انشاء حساب جديد',
          ),
        ),
        7.0.spaceh,
        Container(
          width: 160,
          height: 44,
          child: SecondButton(
            ontap: signin,
            title: "تسجيل الدخول",
            fontcolor: Appcolors.main,
            backcolor: Appcolors.white,
            img: '',
          ),
        ),
      ],
    );
  }
}
