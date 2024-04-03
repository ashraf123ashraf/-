import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/item_book_rate.dart';
import 'package:fehres/core/widgets/title_bar.dart';
import 'package:flutter/material.dart';

class QoutesList extends StatelessWidget {
  const QoutesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BodyTitleBar(
            title: "الاقتباسات",
            subtitle: "اقتباس",
          ),
          Container(
            height: 176,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: 180,
                      width: 300,
                      child: ItemBookRate(
                        isRatingTab: false,
                      ),
                    ),
                    32.0.spaceh,
                  ],
                );
              },
            ),
          ),
        ],
      ),
    ).padh(12);
  }
}
