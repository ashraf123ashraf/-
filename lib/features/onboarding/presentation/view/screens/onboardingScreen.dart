import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
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
  int index = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: index);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        index == 2
            ? AnimatedOpacity(
                opacity: 1,
                duration: Duration(milliseconds: 300),
                child: OnboaButton(
                  title: LocaleKeys.onboaarding_start.tr(),
                  ontap: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      RoutesName.homeScreen,
                      (route) => false,
                    );
                  },
                ),
              )
            : OnboaButton(
                ontap: () => _pageController.animateToPage(
                  index + 1,
                  curve: Curves.easeInOutCubic,
                  duration: Duration(seconds: 1),
                ),
                title: LocaleKeys.onboaarding_skip.tr(),
              ),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (value) {
              print(value);
              // _pageController.animateToPage(index,
              //     duration: Duration(milliseconds: 700),
              //     curve: Curves.easeInOutCubic);
              setState(() {
                index = value;
              });
            },
            reverse: false,
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
            Arrowforwoard(
              ontap: () {
                if (index <= 2 && index > 0) {
                  _pageController.animateToPage(
                    index - 1,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOutCubic,
                  );
                }
              },
            ),
            Spacer(),
            Row(
              children: [
                Dots(
                  ontap: () {
                    print(index);
                    setState(() {
                      index = 0;
                    });
                    _pageController.animateToPage(
                      index,
                      curve: Curves.easeInOutCubic,
                      duration: Duration(seconds: 1),
                    );
                  },
                  index: 0,
                  isActive: index == 0,
                ),
                6.0.spaceh,
                Dots(
                  ontap: () {
                    print(index);
                    setState(() {
                      index = 1;
                    });
                    _pageController.animateToPage(
                      index,
                      curve: Curves.easeInOutCubic,
                      duration: Duration(seconds: 1),
                    );
                  },
                  index: 1,
                  isActive: index == 1,
                ),
                6.0.spaceh,
                Dots(
                  ontap: () {
                    print(index);
                    setState(() {
                      index = 2;
                    });
                    _pageController.animateToPage(
                      index,
                      curve: Curves.easeInOutCubic,
                      duration: Duration(seconds: 1),
                    );
                  },
                  index: 2,
                  isActive: index == 2,
                )
              ],
            ),
          ],
        ),
      ],
    ).padh(45).padv(40));
  }
}
