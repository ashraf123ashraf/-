import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum FieldType { pass, normal }

class MyTextFormField extends StatelessWidget {
  OutlineInputBorder? fieldBorder(Color? color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 1,
        color: color ?? Appcolors.main,
      ),
    );
  }

  InputDecoration? formstyle(FieldType? fieldType) {
    switch (fieldType) {
      case FieldType.normal:
        return InputDecoration(
          constraints: BoxConstraints(maxHeight: 44),
          hintStyle: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color: Appcolors.grey,
          ),
          hintText: hint,
          focusedBorder: fieldBorder(focusbordercolor),
          enabledBorder: fieldBorder(bordercolor),
          fillColor: backgroundcolor ?? Appcolors.white,
          border: fieldBorder(bordercolor),
        );
      case FieldType.pass:
        return InputDecoration(
          constraints: BoxConstraints(maxHeight: 44),
          hintStyle: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color: Appcolors.grey,
          ),
          hintText: hint,
          focusedBorder: fieldBorder(focusbordercolor),
          enabledBorder: fieldBorder(bordercolor),
          fillColor: backgroundcolor ?? Appcolors.white,
          border: fieldBorder(bordercolor),
          suffixIcon: isvisible ?? false
              ? Transform.scale(
                  scale: .5,
                  child: SvgPicture.asset(
                    'eye_pass'.svgPath,
                  ),
                )
              : Transform.scale(
                  scale: .5,
                  child: SvgPicture.asset(
                    'eye-off '.svgPath,
                  ),
                ),
        );
      default:
        return InputDecoration(
          constraints: maxheight == null
              ? null
              : BoxConstraints(
                  maxHeight: maxheight ?? 44,
                ),
          hintStyle: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color: Appcolors.grey,
          ),
          hintText: hint,
          focusedBorder: fieldBorder(focusbordercolor),
          enabledBorder: fieldBorder(bordercolor),
          fillColor: backgroundcolor ?? Appcolors.white,
          border: fieldBorder(bordercolor),
        );
    }
  }

  const MyTextFormField(
      {super.key,
      this.backgroundcolor,
      this.bordercolor,
      this.focusbackgroundcolor,
      this.focusbordercolor,
      this.hint,
      this.maxlines,
      this.fieldType,
      this.maxheight,
      this.isvisible});
  final Color? bordercolor;
  final Color? backgroundcolor;
  final Color? focusbordercolor;
  final Color? focusbackgroundcolor;
  final String? hint;
  final int? maxlines;
  final FieldType? fieldType;
  final double? maxheight;
  final bool? isvisible;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      decoration: formstyle(fieldType),
    );
  }
}
