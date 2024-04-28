import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/profile/presentation/view/widgets/auth_header.dart';
import 'package:fehres/features/profile/presentation/view/widgets/profile_item.dart';
import 'package:flutter/material.dart';

class AuthBody extends StatelessWidget {
  const AuthBody({super.key});

  @override
  Widget build(BuildContext context) {
    List titles = [
      'تعديل الحساب',
      'انشر كتابك',
      "انشطة",
      "مساعدة",
      "شروط الاستخدام",
      "سياسة الخصوصية",
      "تسجيل الخروج",
    ];
    List images = [
      "profile_edit",
      "profile_share",
      "profile_activity",
      "help_profile",
      "conditions_profile",
      'privacy_profile',
      "Logout",
    ];
    return Container(
      child: Column(
        children: [
          68.0.spacev,
          AuthHeader(),
          Expanded(
            child: Container(
              color: Appcolors.white,
              child: ListView.builder(
                itemCount: titles.length,
                itemBuilder: (context, index) {
                  return ProfileItem(
                    islogout: titles[index] == 'تسجيل الخروج',
                    title: titles[index],
                    img: images[index],
                  );
                },
              ),
            ),
          ),
          // ProfileItem(
          //   islogout: false,
          //   img: "Logout",
          //   title: "تسجيل الخروج",
          // )
        ],
      ),
    ).padh(12);
  }
}
