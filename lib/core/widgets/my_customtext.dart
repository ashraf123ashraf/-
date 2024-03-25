import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum Texttype { title, text, normal, err }

class MyTexT extends StatelessWidget {
  TextStyle? gettextstyle(Texttype? type) {
    switch (type) {
      case Texttype.title:
        return TextStyle().copyWith();

      case Texttype.normal:
        return TextStyle().copyWith();
      case Texttype.err:
        return TextStyle().copyWith();
      case Texttype.text:
        return TextStyle().copyWith();
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
      this.wordspacing});
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
  @override
  Widget build(BuildContext context) {
    return Text(
        textAlign: textAlign, text, style: textStyle ?? gettextstyle(type));
  }
}
