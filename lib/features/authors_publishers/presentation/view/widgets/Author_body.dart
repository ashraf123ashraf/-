import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/authors_publishers/presentation/view/widgets/auther_item.dart';
import 'package:flutter/cupertino.dart';

class AuthorBody extends StatelessWidget {
  const AuthorBody({
    super.key,
    this.img,
    this.name,
  });
  final String? name;
  final String? img;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
    ).padh(12).padv(24);
  }
}
