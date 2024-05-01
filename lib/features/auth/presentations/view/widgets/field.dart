import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/my_textform_field.dart';
import 'package:flutter/material.dart';

class ItemField extends StatelessWidget {
  const ItemField({
    super.key,
    this.label,
    this.height,
    this.hint,
    this.fieldtype,
    this.isvisible,
  });
  final String? label;
  final double? height;
  final String? hint;
  final FieldType? fieldtype;
  final bool? isvisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTexT(
          text: label ?? '',
          color: Appcolors.Black,
          fontWeight: FontWeight.w500,
          fontsize: 13,
        ),
        6.0.spacev,
        MyTextFormField(
          isvisible: isvisible,
          fieldType: fieldtype,
          hint: hint,
          maxheight: height ?? 44,
          backgroundcolor: Appcolors.white,
          bordercolor: Appcolors.border,
          focusbordercolor: Appcolors.main,
        ),
      ],
    );
  }
}
