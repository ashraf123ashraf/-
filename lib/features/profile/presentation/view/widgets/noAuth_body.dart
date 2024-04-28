import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/features/profile/presentation/view/widgets/buttons.dart';
import 'package:fehres/features/profile/presentation/view/widgets/profile_item.dart';
import 'package:flutter/material.dart';

class NoAuthBody extends StatelessWidget {
  const NoAuthBody({super.key, this.signin, this.signup});
  final VoidCallback? signin;
  final VoidCallback? signup;
  @override
  Widget build(BuildContext context) {
    List titles = [
      'انشر كتابك',
      "مساعدة",
      "شروط الاستخدام",
      "سياسة الخصوصية",
    ];
    List images = [
      "profile_share",
      "help_profile",
      "conditions_profile",
      'privacy_profile',
    ];
    return Scaffold(
      appBar: homeAppbar(
        text: 'حسابي',
      ),
      body: Container(
        child: Column(
          children: [
            32.0.spacev,
            ProfileButtons(
              signUp: signup,
              signin: signin,
            ),
            32.0.spacev,
            Expanded(
              child: Container(
                color: Appcolors.white,
                child: ListView.builder(
                  itemCount: titles.length,
                  itemBuilder: (context, index) {
                    return ProfileItem(
                      title: titles[index],
                      img: images[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ).padh(12);
  }
}
