import 'package:fehres/core/utils/extenstions.dart';
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
              Image.asset('onbo1'.imagepath),
              Image.asset('onbo2'.imagepath),
              Image.asset('onbo3'.imagepath),
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
