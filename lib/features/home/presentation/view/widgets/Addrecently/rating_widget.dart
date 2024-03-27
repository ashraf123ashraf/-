import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyRating extends StatelessWidget {
  const MyRating({super.key, this.ratingVal});
  final double? ratingVal;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: ratingVal ?? 1,
      itemSize: 21.86,
      direction: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Appcolors.main,
      ),
    );
  }
}
