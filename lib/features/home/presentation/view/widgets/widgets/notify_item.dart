import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotifyItem extends StatelessWidget {
  const NotifyItem({
    super.key,
    this.notifyType,
    this.date,
    this.title,
  });
  final String? notifyType;

  final String? date;
  final String? title;

  getNotifyType() {
    switch (notifyType) {
      case 'discount':
        return 'notify_discount';
      case 'like':
        return 'notify_like';
      case "success":
        return "notify_succ";
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // contentPadding: EdgeInsets.symmetric(
      //   vertical: 12,
      // ),
      leading: SvgPicture.asset('notify_discount'.svgPath),
      title: MyTexT(
        overflow: TextOverflow.clip,
        text: title ?? 'استمتع الان 20 % علي جميع الكتب',
        type: Texttype.title,
        fontsize: 14,
      ),
      subtitle: MyTexT(
        text: date ?? DateTime.now().toString().formatdate(),
        type: Texttype.normal,
        fontsize: 13,
      ),
    );
  }
}
