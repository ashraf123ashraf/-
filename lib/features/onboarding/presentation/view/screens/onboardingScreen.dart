import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/onboarding/presentation/view/widgets/arrow_forword.dart';
import 'package:fehres/features/onboarding/presentation/view/widgets/butoon.dart';
import 'package:fehres/features/onboarding/presentation/view/widgets/dots.dart';
import 'package:fehres/features/onboarding/presentation/view/widgets/page_item.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OnboaButton(
          title: LocaleKeys.onboaarding_skip.tr(),
        ),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (value) {
              _pageController.animateToPage(value,
                  duration: Duration(milliseconds: 700),
                  curve: Curves.easeInOutCubic);
            },
            reverse: false,
            physics: AlwaysScrollableScrollPhysics(),
            children: [
              PageItem(
                text: LocaleKeys.onboaarding_bo1,
                index: 1,
              ),
              PageItem(
                text: LocaleKeys.onboaarding_bo2,
                index: 2,
              ),
              PageItem(
                text: LocaleKeys.onboaarding_bo3,
                index: 3,
              )
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
                  isActive: false,
                ),
                Dots(
                  index: 2,
                  isActive: false,
                ),
                Dots(
                  index: 3,
                  isActive: true,
                )
              ],
            ),
          ],
        ),
      ],
    ).padh(45).padv(40));
  }
}
