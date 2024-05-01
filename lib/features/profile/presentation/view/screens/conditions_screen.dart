import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class ConditionsScreen extends StatelessWidget {
  const ConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      appBar: homeAppbar(
        text: 'شروط الاستخدام',
        iconData: Icons.arrow_back_ios,
        onTap: () => Navigator.pop(context),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            children: [
              24.0.spacev,
              MyTexT(
                  text:
                      'هذه الصفحة تقدم لكم هنا الشروط والقيود التي يسمح بها دخول واستخدام موقع وتطبيق فِهرِس. يوافق المستخدم على قبول شروط وأحكام تطبيق وموقع فِهرِس، ولذلك يرجى قراءة الشروط والأحكام بشكل جيّد قبل استخدام تطبيق وموقع فِهرِس، وفي حال عدم قبول شروط وأحكام تطبيق وموقع فِهرِس فالرجاء عدم استخدام خدمات تطبيق وموقع فِهرِس.'),
            ],
          );
        },
      ).padh(20),
    );
  }
}
