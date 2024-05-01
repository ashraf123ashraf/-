import 'package:fehres/core/helper/navigation_func.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/mycheck_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomCheckTerms extends StatelessWidget {
  const BottomCheckTerms({
    super.key,
    required this.onChanged,
    required this.value,
    this.text,
  });
  final void Function(bool?)? onChanged;
  final bool value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: MycheckBox(
            onChanged: onChanged,
            value: value,
          ),
        ),
        8.0.spaceh,
        Expanded(
          flex: 30,
          child: MyTexT(
            text: text ?? '',
            fontWeight: FontWeight.w400,
            fontsize: 13,
            color: Appcolors.Black,
          ),
        )
      ],
    );
  }
}

class BottomPrivacyPolicy extends StatelessWidget {
  const BottomPrivacyPolicy({
    super.key,
    this.text,
    required this.value,
    required this.onChanged,
    this.text1,
  });
  final bool value;
  final void Function(bool?)? onChanged;
  final String? text;
  final String? text1;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: MycheckBox(
            onChanged: onChanged,
            value: value,
          ),
        ),
        8.0.spaceh,
        Expanded(
          flex: 30,
          child: GestureDetector(
            onTap: () => namedRoute(
              context,
              RoutesName.publisherpolicyscreen,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: text,
                    style: TextStyle(
                      fontFamily: "NotoArabic",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Appcolors.Black,
                    ),
                  ),
                  TextSpan(
                    text: text1,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontFamily: "NotoArabic",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Appcolors.Black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
