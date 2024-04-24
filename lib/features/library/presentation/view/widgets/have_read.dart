import 'package:fehres/features/library/presentation/view/widgets/bookLib_item.dart';
import 'package:flutter/material.dart';

class HaveReadBody extends StatelessWidget {
  const HaveReadBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          return BoolLibItem();
        },
      ),
    );
    ;
  }
}
