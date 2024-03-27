import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class AuthorItem extends StatelessWidget {
  const AuthorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage('author'.imagepath),
        ),
        16.0.spacev,
        MyTexT(
          text: 'احمد مراد',
          fontsize: 14,
          type: Texttype.title,
        ),
      ],
    );
  }
}
