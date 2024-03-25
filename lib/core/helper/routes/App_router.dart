import 'package:fehres/core/helper/navigation_func.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/features/home/presentation/view/screens/homescreen.dart';
import 'package:fehres/features/onboarding/presentation/view/screens/onboardingScreen.dart';
import 'package:fehres/features/splashscreen/presentation/view/screens/splashScreens.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return materialpage(
          SplashScreen(),
        );
      case RoutesName.home:
        return materialpage(
          HomeScreen(),
        );
      case RoutesName.onboarding:
        return materialpage(
          OnboardingScreen(),
        );
    }

    return null;
  }
}
