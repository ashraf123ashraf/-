import 'package:carousel_slider/carousel_slider.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/home/presentation/view/widgets/slider.button.dart';
import 'package:fehres/features/home/presentation/view/widgets/slider_item.dart';
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
        child: Column(
          children: [
            CarouselSlider(
              items: [
                SliderItem(
                  index: slideIndex,
                  img: 'slide1',
                  title: 'بمناسبة معرض\nالكتاب',
                  title2: 'استمتع بعرض علي\nجميع الكتب',
                ),
                SliderItem(
                  index: slideIndex,
                  subchild: SliderButton(
                    title: 'انضم الان',
                  ),
                  img: 'slide2',
                  title: 'الان يمكنك نشر\nكتابك معنا',
                ),
              ],
              options: CarouselOptions(
                onPageChanged: (value, reason) {
                  slideIndex = value;

                  setState(() {});
                },
                autoPlay: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
