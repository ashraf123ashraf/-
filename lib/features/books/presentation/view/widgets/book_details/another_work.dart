import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/title_bar.dart';
import 'package:fehres/features/books/presentation/view/widgets/book_details/body_bookItem.dart';
import 'package:flutter/material.dart';

class AnOtherWorkWidget extends StatelessWidget {
  const AnOtherWorkWidget({super.key, this.data, required this.isSimilar});
  final List? data;
  final bool isSimilar;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BodyTitleBar(
            title: isSimilar ? "اعمال اخري للمؤلف" : 'كتب مشابهة',
            subtitle: '',
            end: '',
            thereEnd: false,
          ),
          16.0.spacev,
          Container(
            height: 180,
            child: ListView.builder(
              itemCount: isSimilar ? 3 : 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    BookItemBody(),
                    8.0.spaceh,
                  ],
                );
              },
            ),
          ),
        ],
      ),
    ).padh(
      12,
    );
  }
}
