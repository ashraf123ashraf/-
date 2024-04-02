import 'package:fehres/core/helper/navigation_func.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget mYsliverAppbar(
  BuildContext context, {
  String? name,
  String? img,
  int? subscribeNum,
  double? ratVal,
}) {
  return SliverAppBar(
    centerTitle: true,
    leading: Icon(
      Icons.arrow_back_ios,
    ),
    actions: [
      IconButton(
        onPressed: () => namedRoute(
          context,
          RoutesName.searchScreen,
        ),
        icon: SvgPicture.asset(
          'search'.svgPath,
        ),
      ),
    ],
    title: MyTexT(
      text: name ?? 'ذكر شوقي منقرض',
      type: Texttype.title,
    ),
    pinned: true,
    stretch: true,
    backgroundColor: Appcolors.background,
    flexibleSpace: FlexibleSpaceBar(
      titlePadding: EdgeInsets.only(),
      background: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          33.0.spacev,
          img == null
              ? Image.asset(
                  height: 230,
                  width: 150,
                  'other_book_name'.imagepath,
                )
              : Container(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyRating(
                ratingVal: 4,
                iconsize: 18,
              ),
              8.0.spaceh,
              MyTexT(
                text: '${ratVal ?? 4.0}',
                fontsize: 14,
                fontWeight: FontWeight.w500,
                color: Appcolors.Black,
              ),
            ],
          ),
          8.0.spacev,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyTexT(
                text: '${subscribeNum ?? 80}',
                fontsize: 13,
                fontWeight: FontWeight.w400,
                color: Appcolors.Black,
              ),
              8.0.spaceh,
              MyTexT(
                text: 'مشاركة',
                fontsize: 13,
                fontWeight: FontWeight.w400,
                color: Appcolors.Black,
              ),
            ],
          ),
        ],
      ),
    ),
    expandedHeight: 416,
  );
}
