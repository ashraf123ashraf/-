import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar(
      {super.key,
      this.text,
      this.iconData,
      this.onTap,
      this.isThereAction,
      this.actions});
  final String? text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final bool? isThereAction;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: MyTexT(text: text ?? ''),
      leading: IconButton(
        icon: Icon(iconData),
        onPressed: onTap,
      ),
      actions: isThereAction ?? false ? actions : null,
    );
  }
}
