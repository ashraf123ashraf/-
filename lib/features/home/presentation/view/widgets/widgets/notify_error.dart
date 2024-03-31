import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class NotifyError extends StatelessWidget {
  const NotifyError({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'no_notify'.imagepath,
          ),
          24.0.spacev,
          MyTexT(
            text: 'لا توجد اي اشعارات في القوت الحالي',
            type: Texttype.normal,
            fontsize: 14,
          )
        ],
      ),
    );
  }
}
