import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dots extends StatelessWidget {
  const Dots({super.key, required this.index, required this.isActive});
  final bool? isActive;
  final int index;
  @override
  Widget build(BuildContext context) {
    return isActive ?? false
        ? Container(
            width: 20,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Appcolors.main,
            ),
          )
        : Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Appcolors.second,
            ),
          );
  }
}
