import 'package:fehres/features/home/presentation/view/widgets/widgets/gridItem.dart';
import 'package:flutter/material.dart';

class ViewAsgrid extends StatelessWidget {
  const ViewAsgrid(
      {super.key,
      this.bookname,
      this.img,
      this.name,
      this.ontap,
      this.ratival});
  final VoidCallback? ontap;
  final String? name;
  final String? img;
  final double? ratival;
  final String? bookname;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,

      // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //   childAspectRatio: 1 / 1,
      //   maxCrossAxisExtent: 2,
      // ),
      // itemBuilder: ((context, index) {
      //   return ItemGrid();
      // }),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 18,
        crossAxisCount: 2,
        childAspectRatio: 9 / 16,
        crossAxisSpacing: 8,
      ),
      itemBuilder: (context, index) {
        return ItemGrid(
          ratingVal: ratival,
          name: name,
          bookName: bookname,
          img: img,
          ontap: ontap,
        );
      },
    );
  }
}
