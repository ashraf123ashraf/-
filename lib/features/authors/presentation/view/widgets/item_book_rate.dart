import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemBookRate extends StatelessWidget {
  const ItemBookRate(
      {super.key,
      this.boolName,
      this.dislikeNum,
      this.img,
      this.likeNum,
      this.name,
      this.text,
      this.dateTime,
      this.isRatingTab,
      this.commentNum});
  final String? img;
  final String? name;
  final String? boolName;
  final String? text;
  final int? likeNum;
  final int? dislikeNum;
  final String? dateTime;
  final bool? isRatingTab;
  final int? commentNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 24,
      ),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8,
        ),
        color: Appcolors.background,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(img ?? 'author'.imagepath),
                      ),
                    ),
                  ),
                  8.0.spaceh,
                  isRatingTab ?? false
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyTexT(
                              text: name ?? 'Kristin watson',
                              fontsize: 13,
                              fontWeight: FontWeight.w400,
                              color: Appcolors.Black,
                            ),
                            MyRating(
                              iconsize: 18,
                              ratingVal: 2.5,
                            ),
                          ],
                        )
                      : MyTexT(
                          text: name ?? 'Kristin watson',
                          fontsize: 13,
                          fontWeight: FontWeight.w400,
                          color: Appcolors.Black,
                        ),
                ],
              ),
              MyTexT(
                text: dateTime ?? DateTime.now().toString().formatdate(),
                type: Texttype.text,
                fontsize: 13,
              ),
            ],
          ),
          8.0.spacev,
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: boolName ?? "كتاب تراب الماس: ",
                  style: TextStyle(
                    fontFamily: 'NotoArabic',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Appcolors.main,
                  ),
                ),
                TextSpan(
                  text: text ??
                      "ان لم يوجد من يتحرك فانا بلا عاهة لاكونن نقمة القدر عليهم",
                  style: TextStyle(
                    fontFamily: 'NotoArabic',
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Appcolors.Black,
                  ),
                ),
              ],
            ),
          ),
          8.0.spacev,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              isRatingTab ?? false
                  ? SvgPicture.asset('comment'.svgPath)
                  : Container(),
              6.0.spaceh,
              MyTexT(text: 'تعليق (${commentNum ?? 0})'),
              6.0.spaceh,
              SvgPicture.asset('liked'.svgPath),
              6.0.spaceh,
              MyTexT(text: '(${likeNum ?? 0})'),
              6.0.spaceh,
              SvgPicture.asset('dislike'.svgPath),
              6.0.spaceh,
              MyTexT(text: '(${dislikeNum ?? 0})'),
            ],
          ),
        ],
      ),
    );
  }
}
