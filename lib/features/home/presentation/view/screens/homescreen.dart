import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/home/presentation/view/widgets/Addrecently/auther_item.dart';
import 'package:fehres/features/home/presentation/view/widgets/Addrecently/bookrecent_item.dart';
import 'package:fehres/features/home/presentation/view/widgets/Addrecently/textbar.dart';
import 'package:fehres/features/home/presentation/view/widgets/sliderWidgets/slider.button.dart';
import 'package:fehres/features/home/presentation/view/widgets/sliderWidgets/slider_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int slideIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Appcolors.white,
        title: SvgPicture.asset('logo'.svgPath),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'search'.svgPath,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'notify'.svgPath,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          padding: EdgeInsets.all(12),
          children: [
            CarouselSlider(
              items: [
                SliderItem(
                  index: slideIndex,
                  img: 'slide1',
                  title: LocaleKeys.home_slider1title.tr(),
                  title2: LocaleKeys.home_slidertitle2.tr(),
                ),
                SliderItem(
                  index: slideIndex,
                  subchild: SliderButton(
                    title: LocaleKeys.home_slider2button.tr(),
                  ),
                  img: 'slide2',
                  title: LocaleKeys.home_slider2title.tr(),
                ),
              ],
              options: CarouselOptions(
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                onPageChanged: (value, reason) {
                  slideIndex = value;

                  setState(() {});
                },
                autoPlay: true,
              ),
            ),
            15.0.spacev,
            TextBar(),
            12.0.spacev,
            Container(
              height: 261,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) => Row(
                  children: [
                    BookRecentItem(),
                    15.0.spaceh,
                  ],
                ),
              ),
            ),
            TextBar(
              title: "الاكثر شهرة",
            ),
            12.0.spacev,
            Container(
              height: 261,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) => Row(
                  children: [
                    BookRecentItem(),
                    15.0.spaceh,
                  ],
                ),
              ),
            ),
            15.0.spacev,
            TextBar(),
            12.0.spacev,
            Container(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index) => Row(
                  children: [
                    AuthorItem(),
                    15.0.spaceh,
                  ],
                ),
              ),
            ),
            12.0.spacev
          ],
        ),
      ),
    );
  }
}
