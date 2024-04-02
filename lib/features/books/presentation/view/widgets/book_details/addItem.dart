import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/utils/utils.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddList extends StatelessWidget {
  const AddList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Appcolors.white,
        boxShadow: [
          BoxShadow(
            color: Appcolors.shadows.withOpacity(.07),
            blurRadius: 20,
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AddItem(
            img: 'review',
            tilte: "اضف مراجعة",
          ),
          DividerLeftOrRight(),
          AddItem(
            img: 'star',
            tilte: "اضف تقييم",
          ),
          DividerLeftOrRight(),
          AddItem(
            img: 'quates',
            tilte: "اضف اقتباسا",
          ),
          DividerLeftOrRight(),
          AddItem(
            img: 'my_reading',
            tilte: "اضف لقراءاتي",
          ),
        ],
      ),
    );
  }
}

class AddItem extends StatelessWidget {
  const AddItem({super.key, this.img, this.tilte});
  final String? tilte;
  final String? img;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 86,
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(img!.svgPath),
          1.0.spacev,
          MyTexT(
            text: tilte ?? '',
            fontsize: 12,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}

class DividerLeftOrRight extends StatelessWidget {
  const DividerLeftOrRight({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          border: Utils.lang == Locale('ar').languageCode
              ? Border(
                  left: BorderSide(
                    width: 1,
                    color: Appcolors.border,
                  ),
                )
              : Border(
                  right: BorderSide(
                    width: 1,
                    color: Appcolors.border,
                  ),
                )),
    );
  }
}
