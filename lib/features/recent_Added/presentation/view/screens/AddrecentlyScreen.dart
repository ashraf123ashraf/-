import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/helper/navigation_func.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/ShuffleWidget.dart';
import 'package:fehres/features/recent_Added/presentation/cubbit/cubit/recentadded_cubit.dart';
import 'package:fehres/features/recent_Added/presentation/view/widgets/view_as_grid.dart';
import 'package:fehres/features/recent_Added/presentation/view/widgets/view_as_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class AddRecentscreen extends StatefulWidget {
  const AddRecentscreen({super.key});

  @override
  State<AddRecentscreen> createState() => _AddRecentscreenState();
}

class _AddRecentscreenState extends State<AddRecentscreen> {
  bool isList = true;
  int iconindex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        isThereAction: true,
        onTap: () => Navigator.pop(context),
        iconData: Icons.arrow_back_ios,
        text: LocaleKeys.home_addrecent.tr(),
        actions: [
          IconButton(
            onPressed: () {
              namedRoute(context, RoutesName.searchScreen);
            },
            icon: SvgPicture.asset(
              'search'.svgPath,
            ),
          )
        ],
      ),
      body: BlocProvider(
        create: (context) => RecentaddedCubit(),
        child: BlocBuilder<RecentaddedCubit, RecentaddedState>(
          builder: (context, state) {
            return MyLoadingwidget(
              errorchild: Container(),
              isError: false,
              isLoading: false,
              child: Column(
                children: [
                  ShuffleWidget(
                    iconindex: iconindex,
                    gridTab: () {
                      setState(() {
                        isList = false;
                        iconindex = 2;
                      });
                    },
                    listTab: () {
                      setState(() {
                        isList = true;
                        iconindex = 1;
                      });
                    },
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      child: isList
                          ? AnimatedSwitcher(
                              duration: Duration(milliseconds: 700),
                              transitionBuilder: (child, animation) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                          begin: Offset(-1, 0),
                                          end: Offset.zero)
                                      .animate(animation),
                                  child: child,
                                );
                              },
                              child: ViewASList(),
                            )
                          : AnimatedSwitcher(
                              duration: Duration(milliseconds: 700),
                              transitionBuilder: (child, animation) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                          begin: Offset(-1, 0),
                                          end: Offset.zero)
                                      .animate(animation),
                                  child: child,
                                );
                              },
                              child: ViewAsgrid(),
                            ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ).padh(12),
    );
  }
}
