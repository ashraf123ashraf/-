import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    super.key,
    this.title,
    this.tabed,
    this.ontabed,
    this.text,
  });
  final String? title;
  final bool? tabed;
  final VoidCallback? ontabed;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontabed,
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              color: Appcolors.white,
              border: Border(
                bottom: BorderSide(width: 1, color: Appcolors.border),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyTexT(
                  text: title ?? '',
                  type: Texttype.title,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Appcolors.Black,
                ),
              ],
            ),
          ).padh(12),
        ),
        if (tabed ?? false)
          AnimatedContainer(
            duration: Duration(seconds: 10),
            decoration: BoxDecoration(
              color: Appcolors.white,
            ),
            child: MyTexT(
                color: Appcolors.grey,
                fontsize: 14,
                text: text ??
                    'تسافر ايلين بطلة الرواية لتهرب من الماضي الذي يلاحقها فتكتشف ان زوجة ابيها ليست افضل من امها وابيها ليس افضل من زوجة امها والحياة عبارة عن مسرحية هزيلية ةكلي تصبح حر لتفعل اي شئ عليك ان  تخسر كل شئ'),
          ).padh(12).padv(12),
      ],
    );
  }
}
