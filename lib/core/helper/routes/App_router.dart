import 'package:fehres/core/helper/navigation_func.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/features/authors_publishers/presentation/view/screens/AuthorScreen.dart';
import 'package:fehres/features/authors_publishers/presentation/view/screens/author_detailsScreen.dart';
import 'package:fehres/features/authors_publishers/presentation/view/screens/publisher_details.dart';
import 'package:fehres/features/books/presentation/view/screens/AddrecentlyScreen.dart';
import 'package:fehres/features/books/presentation/view/screens/category_details.dart';
import 'package:fehres/features/home/presentation/view/screens/homescreen.dart';
import 'package:fehres/features/home/presentation/view/screens/notify_screen.dart';
import 'package:fehres/features/home/presentation/view/screens/search_screen.dart';
import 'package:fehres/features/onboarding/presentation/view/screens/onboardingScreen.dart';
import 'package:fehres/features/pages/presentation/view/screens/home_pagesScreen.dart';
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
      case RoutesName.homePagesScreen:
        return materialpage(
          direction: AxisDirection.up,
          HomePagesScreen(),
        );
      case RoutesName.addRecentlyScreen:
        return materialpage(
          AddRecentscreen(),
          direction: AxisDirection.left,
        );
      case RoutesName.authorscreen:
        return materialpage(
          AuthorScreen(),
          direction: AxisDirection.left,
        );
      case RoutesName.notifyScreen:
        return materialpage(
          NotifyScreen(),
          direction: AxisDirection.down,
        );
      case RoutesName.searchScreen:
        return materialpage(
          SearchScreen(),
          direction: AxisDirection.down,
        );
      case RoutesName.authorDetailsScreen:
        return materialpage(
          AuthorDetailsScreen(),
          direction: AxisDirection.right,
        );
      case RoutesName.publisherDetails:
        return materialpage(
          PublisherDetails(),
          direction: AxisDirection.right,
        );
      case RoutesName.categoriesDetails:
        return materialpage(
          CategoreyDetailsScreen(),
          direction: AxisDirection.right,
        );
    }

    return null;
  }
}
