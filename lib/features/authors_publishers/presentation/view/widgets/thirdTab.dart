import 'package:fehres/core/widgets/item_book_rate.dart';
import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return ItemBookRate(
          isRatingTab: true,
        );
      },
    );
  }
}
