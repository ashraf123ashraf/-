import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthorItem extends StatelessWidget {
  const AuthorItem({super.key, this.img, this.name});
  final String? img;
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 103,
          height: 103,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(img ?? 'author'.imagepath),
            ),
          ),
        ),
        8.0.spacev,
        MyTexT(
          text: name ?? 'احمد مراد',
          fontsize: 14,
          type: Texttype.title,
        ),
      ],
    );
  }
}
