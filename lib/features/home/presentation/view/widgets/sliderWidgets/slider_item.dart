import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/features/home/presentation/view/widgets/sliderWidgets/dot.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SliderItem extends StatelessWidget {
  const SliderItem(
      {super.key,
      this.index,
      required this.title,
      this.title2,
      this.subchild,
      required this.img});

  final int? index;
  final String title;
  final String? title2;
  final Widget? subchild;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: 182,
            decoration: BoxDecoration(
                color: Appcolors.main, borderRadius: BorderRadius.circular(8)),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                MyTexT(
                  height: 1.5,
                  color: Appcolors.white,
                  textAlign: TextAlign.right,
                  text: title,
                  fontWeight: FontWeight.w500,
                  fontsize: 18,
                ).padh(0),
                15.0.spacev,
                subchild ??
                    MyTexT(
                      height: 1.5,
                      color: Appcolors.white,
                      textAlign: TextAlign.right,
                      text: title2 ?? '',
                      fontWeight: FontWeight.w400,
                      fontsize: 14,
                    ).padl(0),
              ],
            ),
          ),
          Positioned(
            left: 0,
            child: Image.asset(
              img.imagepath,
            ),
          ),
          Positioned(
            top: 160,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideDot(
                  iSActive: index == 0,
                  index: 0,
                ),
                8.0.spaceh,
                SlideDot(
                  index: 1,
                  iSActive: index == 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
