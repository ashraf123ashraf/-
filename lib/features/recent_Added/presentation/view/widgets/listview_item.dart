import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      this.authorName,
      this.bookname,
      this.img,
      this.ratioval,
      this.text});
  final String? img;
  final String? bookname;
  final String? authorName;
  final double? ratioval;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Appcolors.white,
            borderRadius: BorderRadius.circular(
              9,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 4,
                child: img == null
                    ? Image.asset('book'.imagepath)
                    : Image.asset(''),
              ),
              8.0.spaceh,
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        MyTexT(
                          text: bookname ?? 'ذكر شرقي منقرض',
                          type: Texttype.title,
                        ),
                        8.0.spaceh,
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset('more'.svgPath),
                        ),
                      ],
                    ),
                    MyTexT(
                      maxlines: 9,
                      text: text ??
                          'كل شئ في عالم اليوم يحمل في باطنه ما يحملنا على الشك والإيمان في ذا .....',
                      type: Texttype.text,
                      overflow: TextOverflow.ellipsis,
                    ),
                    10.0.spacev,
                    Row(
                      children: [
                        MyTexT(
                          fontsize: 13,
                          text: 'المؤلف :',
                          type: Texttype.title,
                        ),
                        MyTexT(
                          fontsize: 13,
                          fontWeight: FontWeight.w500,
                          text: authorName ?? ' محمد طه ',
                          type: Texttype.text,
                        ),
                      ],
                    ),
                    8.0.spacev,
                    MyRating(
                      ratingVal: ratioval,
                    ),
                    8.0.spacev,
                  ],
                ),
              ),
            ],
          ),
        ),
        15.0.spacev
      ],
    );
  }
}
