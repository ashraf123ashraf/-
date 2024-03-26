import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:flutter/material.dart';

class SlideDot extends StatelessWidget {
  const SlideDot({super.key, this.iSActive, this.index});
  final bool? iSActive;
  final int? index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: iSActive ?? false ? 22 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: Appcolors.white,
        shape: iSActive ?? false ? BoxShape.rectangle : BoxShape.circle,
        borderRadius: iSActive ?? false ? BorderRadius.circular(10) : null,
      ),
    );
  }
}
