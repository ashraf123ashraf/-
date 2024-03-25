import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class PageItem extends StatelessWidget {
  const PageItem({super.key, required this.index, required this.text});
  final int index;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('onbo$index'.imagepath),
        MyTexT(
          text: text.tr(),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
