import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/helper/navigation_func.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/features/authors_publishers/presentation/view/widgets/auther_item.dart';
import 'package:fehres/features/home/presentation/cubbit/cubit/home_cubit.dart';
import 'package:fehres/features/home/presentation/view/widgets/sliderWidgets/slider.button.dart';
import 'package:fehres/features/home/presentation/view/widgets/sliderWidgets/slider_item.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/bookrecent_item.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/textbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            onPressed: () {
              namedRoute(context, RoutesName.searchScreen);
            },
            icon: SvgPicture.asset(
              'search'.svgPath,
            ),
          ),
          IconButton(
            onPressed: () {
              namedRoute(context, RoutesName.notifyScreen);
            },
            icon: SvgPicture.asset(
              'notify'.svgPath,
            ),
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocConsumer<HomeCubit, HomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            return MyLoadingwidget(
              isError: false,
              isLoading: false,
              errorchild: Container(),
              child: Container(
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
                            onpress: () => namedRoute(
                              context,
                              RoutesName.joinusscreen,
                            ),
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
                    TextBar(
                      ontap: () =>
                          namedRoute(context, RoutesName.addRecentlyScreen),
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
                    TextBar(
                      title: "اشهر المؤلفون",
                      ontap: () => namedRoute(context, RoutesName.authorscreen),
                    ),
                    12.0.spacev,
                    Container(
                      height: 150,
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
          },
        ),
      ),
    );
  }
}
