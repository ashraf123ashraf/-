import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

AppBar homeAppbar(
    {String? text,
    IconData? iconData,
    VoidCallback? onTap,
    bool? isThereAction,
    List<Widget>? actions}) {
  return AppBar(
    centerTitle: true,
    title: MyTexT(
      text: text ?? '',
      fontsize: 16,
      type: Texttype.title,
    ),
    leading: IconButton(
      icon: Icon(
        color: Appcolors.Black,
        iconData,
      ),
      onPressed: onTap,
    ),
    actions: isThereAction ?? false ? actions : null,
  );
}
