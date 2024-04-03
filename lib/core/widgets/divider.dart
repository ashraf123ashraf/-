import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key, this.height, this.width, this.isHori});
  final double? width;
  final double? height;
  final bool? isHori;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 0,
      decoration: BoxDecoration(
        border: isHori ?? false
            ? Border(
                right: BorderSide(
                  width: width ?? 1,
                  color: Appcolors.border,
                ),
              )
            : Border(
                bottom: BorderSide(
                  width: width ?? 1,
                  color: Appcolors.border,
                ),
              ),
      ),
    );
  }
}
