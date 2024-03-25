import 'package:fehres/core/utils/extenstions.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        PageView(
          reverse: true,
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            Image.asset('onbo1'.imagepath),
            Image.asset('onbo2'.imagepath),
            Image.asset('onbo3'.imagepath),
          ],
        ),
      ],
    ));
  }
}
