import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PrivatesScreen extends StatelessWidget {
  const PrivatesScreen({super.key});
  Column textitem({String? title, String? content}) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset('point'.svgPath),
            8.0.spaceh,
            MyTexT(
              text: 'كيف نقوم بحماية معلوماتك ',
              fontsize: 13,
              fontWeight: FontWeight.w500,
              color: Appcolors.Black,
            ),
          ],
        ),
        16.0.spacev,
        MyTexT(
          text:
              'نحن نتبع الإجراءات السليمة ومعايير الأمان في جمع وحفظ والتعامل مع البيانات، وذلك لحماية تلك البيانات ضد التعامل غير المصرح به، أو التعديل، أو الإفصاح أو إتلاف بياناتك الشخصية، واسم المستخدم، وكلمة المرور، ومعلومات تخص تعاملاتك والبيانات المخزنة على تطبيقنا. يتم تبادل البيانات الحساسة والخاصة بين فِهرِس ومستخدميه من خلال قنوات اتصال مؤمنة ويتم تشفيرها وحمايتها من خلال طرق وأساليب رقمية معتمدة',
          fontsize: 13,
          fontWeight: FontWeight.w400,
          color: Appcolors.Black,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      appBar: homeAppbar(
        text: 'سياسة الخصوصية',
        iconData: Icons.arrow_back_ios,
        onTap: () => Navigator.pop(context),
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            children: [
              24.0.spacev,
              textitem(),
            ],
          );
        },
      ).padh(12),
    );
  }
}
