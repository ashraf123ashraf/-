import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookRecentItem extends StatelessWidget {
  const BookRecentItem(
      {super.key, this.ratingVal, this.bookName, this.img, this.name});
  final double? ratingVal;
  final String? name;
  final String? bookName;
  final String? img;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 158,
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
          MyTexT(
            text: bookName ?? LocaleKeys.home_bookname.tr(),
            type: Texttype.title,
            fontsize: 14,
          ),
          MyTexT(
            text: name ?? LocaleKeys.home_autherName.tr(),
            type: Texttype.normal,
            fontsize: 13,
          ),
          RatingBarIndicator(
            rating: ratingVal ?? 1,
            itemSize: 21.86,
            direction: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Appcolors.main,
            ),
          )
        ],
      ),
    );
  }
}
