import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/features/home/presentation/view/widgets/Addrecently/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

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
                child: Image.asset(
                  'book'.imagepath,
                ),
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
                          text: 'ذكر شرقي منقرض',
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
                      text:
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
                          text: ' محمد طه ',
                          type: Texttype.text,
                        ),
                      ],
                    ),
                    8.0.spacev,
                    MyRating(),
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
