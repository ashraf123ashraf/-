import 'package:fehres/core/widgets/bookItem.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({super.key, this.Img, this.bookname, this.ratingVal});
  final String? Img;
  final String? bookname;
  final double? ratingVal;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 3,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 11,
        childAspectRatio: 8 / 13,
      ),
      itemBuilder: (context, index) => BookIT(
        bookName: bookname,
        img: Img,
        ratingval: ratingVal,
      ),
    );
  }
}
