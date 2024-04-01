import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class MyTabbarWidget extends StatelessWidget {
  const MyTabbarWidget({
    super.key,
    this.length,
    this.child,
    this.text1,
    this.text2,
    this.text3,
    this.childView1,
    this.childView2,
    this.childView3,
    this.viewchildren,
    this.tabschildren,
  });
  final int? length;
  final Widget? child;
  final String? text1;
  final String? text2;
  final String? text3;
  final Widget? childView1;
  final Widget? childView2;
  final Widget? childView3;
  final List<Widget>? tabschildren;
  final List<Widget>? viewchildren;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: length ?? 3,
      child: Expanded(
        child: child ??
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Appcolors.main,
                    tabs: length == 3
                        ? [
                            MyTexT(
                              type: Texttype.title,
                              text: text1 ?? '',
                              fontsize: 14,
                            ),
                            MyTexT(
                              type: Texttype.title,
                              text: text2 ?? '',
                              fontsize: 14,
                            ),
                            MyTexT(
                              type: Texttype.title,
                              text: text3 ?? '',
                              fontsize: 14,
                            )
                          ]
                        : tabschildren ?? [],
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: TabBarView(
                    children: length == 3
                        ? [
                            childView1 ?? Text('111111111'),
                            childView2 ?? Text('222222222222222'),
                            childView3 ?? Text('333333333333333333'),
                          ]
                        : viewchildren ?? [],
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
