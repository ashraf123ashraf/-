import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/books/presentation/view/widgets/buttonbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key, this.isActive, this.ontab});
  final VoidCallback? ontab;
  final bool? isActive;
  @override
  Widget build(BuildContext context) {
    List titles = ['روايات', "قصص قصيرة", "روايات رومانسية", "قصص رعب"];

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ButtonBaritem(
              isActive: isActive ?? false,
              ontab: ontab,
              text: titles[index],
            ),
            8.0.spaceh,
          ],
        );
      },
    ).padt(12);
  }
}
