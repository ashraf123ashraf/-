import 'package:fehres/features/categories/presentation/view/widgets/category_Item.dart';
import 'package:flutter/material.dart';

class BooksNovels extends StatelessWidget {
  const BooksNovels({super.key, this.img, this.name, this.ontap});
  final String? name;
  final String? img;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 12,
      ),
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 6 / 5,
        crossAxisSpacing: 16,
        mainAxisSpacing: 17,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return CategoryItem(
          categoryName: name,
          img: img,
          ontap: ontap,
        );
      },
    );
  }
}
