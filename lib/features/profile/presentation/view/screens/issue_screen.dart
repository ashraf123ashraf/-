import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/my_textform_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IsuueScreen extends StatelessWidget {
  const IsuueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        isThereAction: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('issue_profile'.svgPath),
          ),
        ],
        icon: SvgPicture.asset(
          'cancel'.svgPath,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  16.0.spacev,
                  MyTexT(
                    fontsize: 14,
                    fontWeight: FontWeight.w500,
                    text: 'from : example@example.com',
                  ),
                  12.0.spacev,
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Appcolors.border,
                        ),
                      ),
                    ),
                  ),
                  12.0.spacev,
                  MyTextFormField(
                    bordercolor: Appcolors.border,
                    hint: "وصف المشكلة......",
                    maxlines: 20,
                  ),
                  12.0.spacev,
                ],
              ),
            ).padh(12),
            Container(
              decoration: BoxDecoration(
                color: Appcolors.ofWhite,
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child: SvgPicture.asset(
                'send'.svgPath,
              ).padh(12).padv(16),
            )
          ],
        ),
      ),
    );
  }
}
