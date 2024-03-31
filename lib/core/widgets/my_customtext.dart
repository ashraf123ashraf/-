import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum Texttype { title, text, normal, err }

class MyTexT extends StatelessWidget {
  TextStyle? gettextstyle(Texttype? type) {
    switch (type) {
      case Texttype.title:
        return TextStyle(
          color: Appcolors.Black,
          fontWeight: FontWeight.w500,
        ).copyWith(
          overflow: overflow ?? TextOverflow.ellipsis,
          fontSize: fontsize ?? 16,
          height: height ?? 1.4,
        );

      case Texttype.normal:
        return TextStyle(color: Appcolors.grey).copyWith(
          fontSize: fontsize ?? 13,
          fontWeight: fontWeight ?? FontWeight.w500,
        );
      case Texttype.err:
        return TextStyle().copyWith();
      case Texttype.text:
        return TextStyle(
          fontWeight: FontWeight.w400,
        ).copyWith(
          color: color ?? Appcolors.grey,
          fontSize: fontsize ?? 12,
        );
      default:
        return TextStyle(
          fontSize: fontsize,
          color: color,
          fontWeight: fontWeight,
          height: height,
          overflow: overflow,
          fontStyle: fontStyle,
          wordSpacing: wordspacing,
          letterSpacing: letterspacing,
        );
    }
  }

  const MyTexT(
      {super.key,
      required this.text,
      this.textAlign,
      this.color,
      this.fontWeight,
      this.fontsize,
      this.height,
      this.textStyle,
      this.fontStyle,
      this.overflow,
      this.type,
      this.letterspacing,
      this.wordspacing,
      this.maxlines});
  final String text;
  final Color? color;
  final double? fontsize;
  final FontWeight? fontWeight;
  final double? height;
  final TextStyle? textStyle;
  final FontStyle? fontStyle;
  final TextOverflow? overflow;
  final Texttype? type;
  final double? wordspacing;
  final double? letterspacing;
  final TextAlign? textAlign;
  final int? maxlines;
  @override
  Widget build(BuildContext context) {
    return Text(
        maxLines: maxlines,
        textAlign: textAlign,
        text,
        style: textStyle ?? gettextstyle(type));
  }
}
