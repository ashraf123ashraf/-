import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/tabbarWidget.dart';
import 'package:fehres/features/authors_publishers/presentation/cubbit/cubit/authors_cubit.dart';
import 'package:fehres/features/authors_publishers/presentation/view/widgets/auther_item.dart';
import 'package:fehres/features/authors_publishers/presentation/view/widgets/first_tab.dart';
import 'package:fehres/features/authors_publishers/presentation/view/widgets/second_tab.dart';
import 'package:fehres/features/authors_publishers/presentation/view/widgets/social_bar.dart';
import 'package:fehres/features/authors_publishers/presentation/view/widgets/thirdTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthorDetailsScreen extends StatelessWidget {
  const AuthorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthorsCubit(),
      child: BlocBuilder<AuthorsCubit, AuthorsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: homeAppbar(
              iconData: Icons.arrow_back_ios,
              onTap: () => Navigator.pop(context),
            ),
            body: MyLoadingwidget(
              errorchild: Container(),
              isError: false,
              isLoading: false,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AuthorItem(
                      isCol: false,
                    ),
                    20.0.spacev,
                    MyTexT(
                      text:
                          'أحمد مراد (مواليد 14 فبراير 1978) كاتب وروائي وكاتب سيناريو ومصور ومصمم رسوميات مصري، تخرّج في مدرسة ليسيه الحرّية بباب اللوق عام 1996 قبل أن يلتحق بالمعهد العالي للسينما ليدرس التصوير السينمائي، وتخرّج عام 2001 بترتيب الأول على القسم، ونالت أفلام تخرّجه «الهائمون - الثلاث ورقات - وفي اليوم السابع» جوائز للأفلام القصيرة في مهرجانات بإنجلترا وفرنسا وأوكرانيا.',
                      type: Texttype.text,
                      fontsize: 13,
                      color: Appcolors.Black,
                    ),
                    16.0.spacev,
                    SocialBar(),
                    16.0.spacev,
                    MyTabbarWidget(
                      length: 3,
                      text1: 'الكتب',
                      text2: 'الاقتباسات',
                      text3: 'المراجعات',
                      childView1: FirstTab(),
                      childView2: SecondTab(),
                      childView3: ThirdTab(),
                    )
                  ],
                ),
              ).padh(12).padv(18),
            ),
          );
        },
      ),
    );
  }
}
