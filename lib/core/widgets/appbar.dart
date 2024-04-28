import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

AppBar homeAppbar(
    {String? text,
    Widget? icon,
    IconData? iconData,
    VoidCallback? onTap,
    bool? isThereAction,
    Widget? bottom,
    List<Widget>? actions}) {
  return AppBar(
    backgroundColor: Appcolors.white,
    centerTitle: true,
    title: MyTexT(
      text: text ?? '',
      fontsize: 16,
      type: Texttype.title,
    ),
    leading: IconButton(
      icon: icon ??
          Icon(
            color: Appcolors.Black,
            iconData,
          ),
      onPressed: onTap,
    ),
    actions: isThereAction ?? false ? actions : null,
  );
}
