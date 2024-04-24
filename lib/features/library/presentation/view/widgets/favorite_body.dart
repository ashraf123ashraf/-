import 'package:fehres/features/library/presentation/view/widgets/bookLib_item.dart';
import 'package:flutter/material.dart';

class FavoriteBody extends StatelessWidget {
  const FavoriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return BoolLibItem();
        },
      ),
    );
  }
}
