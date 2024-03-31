import 'package:fehres/features/recent_Added/presentation/view/widgets/listview_item.dart';
import 'package:flutter/material.dart';

class ViewASList extends StatelessWidget {
  const ViewASList(
      {super.key,
      this.booknamr,
      this.img,
      this.name,
      this.ontap,
      this.ratival,
      this.text});
  final VoidCallback? ontap;
  final String? name;
  final String? booknamr;
  final double? ratival;
  final String? img;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 11,
      itemBuilder: (context, index) {
        return ListItem(
          authorName: name,
          img: img,
          bookname: booknamr,
          ratioval: ratival,
          text: text,
        );
      },
    );
  }
}
