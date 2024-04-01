import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/authors_publishers/presentation/view/widgets/auther_item.dart';
import 'package:flutter/material.dart';

class AuthorTab extends StatelessWidget {
  const AuthorTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 12,
        childAspectRatio: 6 / 8,
      ),
      itemBuilder: (context, index) {
        return AuthorItem();
      },
    ).padh(12).padv(16);
  }
}
