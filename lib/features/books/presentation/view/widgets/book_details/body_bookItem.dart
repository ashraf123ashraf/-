import 'package:fehres/core/utils/extenstions.dart';
import 'package:flutter/material.dart';

class BookItemBody extends StatelessWidget {
  const BookItemBody({super.key, this.img});

  final String? img;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(
        img == null ? 'anotherforauthor'.imagepath : img!.imagepath,
      ),
    );
  }
}
