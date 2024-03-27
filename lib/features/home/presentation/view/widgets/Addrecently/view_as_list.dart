import 'package:fehres/features/home/presentation/view/widgets/Addrecently/listview_item.dart';
import 'package:flutter/material.dart';

class ViewASList extends StatelessWidget {
  const ViewASList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 11,
      itemBuilder: (context, index) {
        return ListItem();
      },
    );
  }
}
