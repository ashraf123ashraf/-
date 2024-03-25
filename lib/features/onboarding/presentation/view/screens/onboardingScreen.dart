import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/features/onboarding/presentation/view/widgets/arrow_forword.dart';
import 'package:fehres/features/onboarding/presentation/view/widgets/dots.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: PageView(
            reverse: true,
            physics: AlwaysScrollableScrollPhysics(),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('onbo1'.imagepath),
                  MyTexT(
                    text: LocaleKeys.onboaarding_bo1.tr(),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('onbo2'.imagepath),
                  MyTexT(
                    text: LocaleKeys.onboaarding_bo2.tr(),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('onbo3'.imagepath),
                  MyTexT(
                    text: LocaleKeys.onboaarding_bo3.tr(),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Arrowforwoard(),
            Spacer(),
            Row(
              children: [
                Dots(
                  index: 1,
                  isActive: true,
                ),
                Dots(
                  index: 2,
                  isActive: false,
                ),
                Dots(
                  index: 3,
                  isActive: false,
                )
              ],
            ),
          ],
        ),
      ],
    ));
  }
}
