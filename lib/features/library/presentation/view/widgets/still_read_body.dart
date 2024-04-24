import 'package:fehres/features/library/presentation/view/widgets/still_reading_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StillBody extends StatelessWidget {
  const StillBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return StillReadingItem();
            }));
  }
}
