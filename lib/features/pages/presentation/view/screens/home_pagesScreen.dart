import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/categories/presentation/view/screens/Categories_screen.dart';
import 'package:fehres/features/home/presentation/view/screens/homescreen.dart';
import 'package:fehres/features/library/presentation/cubbit/cubit/library_cubit.dart';
import 'package:fehres/features/library/presentation/view/screens/librariyScreen.dart';
import 'package:fehres/features/profile/presentation/view/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class HomePagesScreen extends StatefulWidget {
  const HomePagesScreen({super.key});

  @override
  State<HomePagesScreen> createState() => _HomePagesScreenState();
}

class _HomePagesScreenState extends State<HomePagesScreen> {
  int pageIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: pageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (value) {},
        controller: _pageController,
        children: [
          HomeScreen(),
          CategoriesScreen(),
          Container(),
          BlocProvider(
            create: (context) => LibraryCubit(),
            child: LibraryScreen(),
          ),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        onTap: (value) {
          pageIndex = value;
          _pageController.animateToPage(value,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOutCubic);
          setState(() {});
        },

        backgroundColor: Appcolors.white,
        border: Border(top: BorderSide(width: 1, color: Appcolors.border)),
        currentIndex: pageIndex,
        height: 62,
        activeColor: Appcolors.main,
        // indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset('active_home_icon'.svgPath),
            icon: SvgPicture.asset('home_icon'.svgPath),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset('align-justify_active'.svgPath),
            icon: SvgPicture.asset('align-justify'.svgPath),
            label: "الاقسام",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('shopping_car'.svgPath),
            label: "عربة التسوق",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'active_librar'.svgPath,
            ),
            icon: SvgPicture.asset(
              'libra'.svgPath,
            ),
            label: "مكتبتي",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'user-profile-active'.svgPath,
            ),
            icon: SvgPicture.asset('profile'.svgPath),
            label: "حسابي",
          ),
        ],
      ),
    );
  }
}
