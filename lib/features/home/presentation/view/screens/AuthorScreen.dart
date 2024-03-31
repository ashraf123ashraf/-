import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/home/presentation/view/widgets/appbar.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/auther_item.dart';
import 'package:flutter/material.dart';

class AuthorScreen extends StatelessWidget {
  const AuthorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        iconData: Icons.arrow_back_ios,
        onTap: () => Navigator.pop(context),
        text: 'اشهر المؤلفون',
      ),
      body: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 12,
          childAspectRatio: 6 / 9,
        ),
        itemBuilder: (context, index) {
          return AuthorItem();
        },
      ).padh(12).padt(24),
    );
  }
}
