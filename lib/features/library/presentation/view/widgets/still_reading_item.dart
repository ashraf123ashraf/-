import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/rating_widget.dart';
import 'package:fehres/features/library/presentation/view/widgets/indicate_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class StillReadingItem extends StatelessWidget {
  const StillReadingItem({
    super.key,
    this.authorName,
    this.bookname,
    this.img,
    this.onimgTab,
    this.optionsTab,
    this.ratioval,
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
          height: 152,
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
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'similar'.imagepath,
                                    ),
                                  ),
                                ),
                                height: 152,
                                width: 101,
                                // child: Image.asset(
                                //   width: 101,
                                //   height: 148,

                                // ),
                              ),
                            )
                          : Image.asset(''),
                      12.0.spaceh,
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
                          ProgressIndicate(),
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
