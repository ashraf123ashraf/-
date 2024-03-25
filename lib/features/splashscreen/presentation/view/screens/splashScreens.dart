import 'package:fehres/core/helper/navigation_func.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(seconds: 2),
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: Appcolors.main.withOpacity(value),
          body: Center(
            child: Image.asset(
              'logo'.imagepath,
            ),
          ),
        );
      },
      onEnd: () => namedRoute(context, RoutesName.onboarding),
    );
  }
}
