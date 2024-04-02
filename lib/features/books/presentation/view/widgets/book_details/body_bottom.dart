import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/widgets/my_button.dart';
import 'package:flutter/material.dart';

class BottomBody extends StatelessWidget {
  const BottomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 18,
      ),
      decoration: BoxDecoration(
        color: Appcolors.white,
        border: Border(
          top: BorderSide(
            width: 1,
            color: Appcolors.border,
          ),
        ),
      ),
      child: MyButton(
        title: "اشترك للقراءة والاستماع",
      ),
    );
  }
}
