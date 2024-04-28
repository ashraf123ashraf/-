import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key,
      this.backgroundcolor,
      this.bordercolor,
      this.focusbackgroundcolor,
      this.focusbordercolor,
      this.hint,
      this.maxlines});
  final Color? bordercolor;
  final Color? backgroundcolor;
  final Color? focusbordercolor;
  final Color? focusbackgroundcolor;
  final String? hint;
  final int? maxlines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxlines,
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Appcolors.lightGrey,
        ),
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 1,
            color: bordercolor ?? Appcolors.main,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 1,
            color: bordercolor ?? Appcolors.main,
          ),
        ),
        fillColor: backgroundcolor ?? Appcolors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 1,
            color: bordercolor ?? Appcolors.main,
          ),
        ),
      ),
    );
  }
}
