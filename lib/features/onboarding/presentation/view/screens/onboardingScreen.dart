import 'package:fehres/core/utils/extenstions.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [
        Image.asset('onboarding1'.imagepath),
        Image.asset('onboarding2'.imagepath),
        Image.asset('onboarding3'.imagepath),
      ],
    ));
  }
}
