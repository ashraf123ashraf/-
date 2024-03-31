import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemGrid extends StatelessWidget {
  const ItemGrid({
    this.ratingVal,
    this.img,
    this.bookName,
    this.name,
    this.ontap,
    super.key,
  });

  final double? ratingVal;

  final String? img;

  final String? bookName;

  final String? name;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Appcolors.white,
          boxShadow: [
            BoxShadow(
              color: Appcolors.shadows.withOpacity(.05),
              spreadRadius: 0,
              blurRadius: 20,
              offset: Offset(2, 4),
            ),
          ]),
      height: 272,
      width: 163,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 163,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                8,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: img == null
                    ? AssetImage(
                        'book'.imagepath,
                      )
                    : AssetImage(''),
              ),
            ),
          ),
          12.0.spacev,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 6,
                child: MyTexT(
                  overflow: TextOverflow.ellipsis,
                  text: bookName ?? LocaleKeys.home_bookname.tr(),
                  type: Texttype.title,
                  fontsize: 14,
                ),
              ),
              Spacer(),
              Expanded(
                flex: 4,
                child: IconButton(
                  onPressed: ontap,
                  icon: SvgPicture.asset(
                    'heart'.svgPath,
                  ),
                ),
              ),
            ],
          ),
          MyTexT(
            text: name ?? LocaleKeys.home_autherName.tr(),
            type: Texttype.normal,
            fontsize: 13,
          ),
          MyRating(
            ratingVal: ratingVal,
          ),
        ],
      ).padh(8),
    );
  }
}
