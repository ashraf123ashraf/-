import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/books/presentation/view/widgets/buttonbar.dart';
import 'package:flutter/material.dart';

class MyButtonBarWidget extends StatelessWidget {
  const MyButtonBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List items = ['نشر سنة 2018', "المدة 2h 37m", "147 صفحة"];
    return Container(
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => Row(
          children: [
            ButtonBaritem(
              text: items[index],
            ),
            8.0.spaceh,
          ],
        ),
      ),
    ).padh(12);
  }
}
