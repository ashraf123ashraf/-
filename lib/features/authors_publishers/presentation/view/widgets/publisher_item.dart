import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class PublisherItem extends StatelessWidget {
  const PublisherItem({super.key, this.onTap, this.img, this.iscol, this.name});
  final VoidCallback? onTap;
  final String? name;
  final String? img;
  final bool? iscol;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: iscol ?? true
          ? Container(
              width: 103,
              height: 133,
              child: Column(
                children: [
                  img == null
                      ? Image.asset('publisher'.imagepath)
                      : Container(),
                  16.0.spacev,
                  MyTexT(
                    text: name ?? 'تشكيل للنشر',
                    type: Texttype.title,
                  ),
                ],
              ),
            )
          : Row(
              children: [
                img == null ? Image.asset('publisher'.imagepath) : Container(),
                16.0.spaceh,
                MyTexT(
                  text: 'تشكيل للنشر',
                  type: Texttype.title,
                ),
              ],
            ),
    );
  }
}
