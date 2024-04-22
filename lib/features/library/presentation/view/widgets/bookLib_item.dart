import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BoolLibItem extends StatelessWidget {
  const BoolLibItem({
    super.key,
    this.authorName,
    this.bookname,
    this.img,
    this.onimgTab,
    this.ratioval,
    this.optionsTab,
  });
  final String? img;
  final VoidCallback? onimgTab;
  final String? bookname;
  final String? authorName;
  final double? ratioval;
  final VoidCallback? optionsTab;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 343,
          height: 105,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                spreadRadius: 0,
                blurRadius: 20,
                color: Appcolors.shadow,
              )
            ],
            color: Appcolors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      img == null
                          ? GestureDetector(
                              onTap: onimgTab,
                              child: Image.asset(
                                width: 101,
                                height: 105,
                                'book'.imagepath,
                              ),
                            )
                          : Image.asset(''),
                      8.0.spaceh,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          16.0.spacev,
                          Row(
                            children: [
                              MyTexT(
                                fontsize: 14,
                                text: bookname ?? 'ذكر شرقي منقرض',
                                // type: Texttype.title,
                              ),
                              12.0.spaceh,
                              // IconButton(
                              //   onPressed: () {},
                              //   icon: SvgPicture.asset('more'.svgPath),
                              // ),
                            ],
                          ),
                          8.0.spacev,
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
                          Row(
                            children: [
                              MyRating(
                                ratingVal: ratioval,
                              ),
                              4.0.spaceh,
                              MyTexT(
                                fontsize: 14,
                                fontWeight: FontWeight.w400,
                                text: '${ratioval ?? 1}',
                                color: Appcolors.main,
                              )
                            ],
                          ),
                          8.0.spacev,
                        ],
                      ),
                    ],
                  ),
                  16.0.spaceh,
                  Column(
                    children: [
                      16.0.spacev,
                      IconButton(
                        onPressed: optionsTab,
                        icon: SvgPicture.asset('more'.svgPath),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ).padh(
          8,
        ),
        16.0.spacev,
      ],
    );
  }
}
