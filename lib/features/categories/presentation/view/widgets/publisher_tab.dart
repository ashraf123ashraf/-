import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/authors_publishers/presentation/view/widgets/publisher_item.dart';
import 'package:flutter/material.dart';

class PublisherTab extends StatelessWidget {
  const PublisherTab({super.key, this.ontab});
  final VoidCallback? ontab;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 7,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 4 / 6,
          mainAxisSpacing: 16,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return PublisherItem(
            onTap: ontab,
          );
        }).padh(12).padv(16);
  }
}
