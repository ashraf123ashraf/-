import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PublishPolicyScreen extends StatelessWidget {
  const PublishPolicyScreen({super.key});
  Widget item(String? text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: SvgPicture.asset('point'.svgPath),
        ),
        8.0.spaceh,
        Expanded(
          flex: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyTexT(
                text: text ?? '',
                color: Appcolors.Black,
                fontsize: 14,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        text: 'سياسة النشر',
        iconData: Icons.arrow_back_ios,
        onTap: () => Navigator.pop(context),
      ),
      body: MyLoadingwidget(
        isError: false,
        isLoading: false,
        errorchild: Container(),
        child: Container(
          child: Column(
            children: [
              20.0.spacev,
              item('يرجى تقديم العمل بصياغته النهائية'),
              20.0.spacev,
              item(
                  'يتعهد الكاتب أن يكون هو صاحب العمل ومؤلفه وأنه ليس منشوراً من خلال دار نشر أخرى'),
              20.0.spacev,
              item(
                  'كل الأعمال المقدمة تُعامل بسرية تامة، سواءً التي تُقبل للنشر أو التي يُعتذر عن نشرها'),
              20.0.spacev,
              item('تعبئة النموذج الالكتروني وارفاق العمل'),
              20.0.spacev,
              item(
                  'سيتم إخطار المؤلف بقبول عمله من عدمه بأسرع وقتٍ ممكن، وسيكون ذلك عبر البريد الإلكتروني'),
            ],
          ),
        ).padh(12),
      ),
    );
  }
}
