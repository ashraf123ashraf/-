import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

class BookIT extends StatelessWidget {
  const BookIT({super.key, this.img, this.bookName, this.ratingval});
  final String? img;
  final String? bookName;
  final double? ratingval;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          24.0.spacev,
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
          8.0.spacev,
          MyTexT(
            text: bookName ?? LocaleKeys.home_bookname.tr(),
            type: Texttype.title,
            fontsize: 14,
          ),
          8.0.spacev,
          MyRating(
            ratingVal: ratingval,
          ),
        ],
      ),
    );
  }
}
