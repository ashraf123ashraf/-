import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/home/presentation/view/widgets/appbar.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/ShuffleWidget.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/view_as_grid.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/view_as_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class AddRecentscreen extends StatefulWidget {
  const AddRecentscreen({super.key});

  @override
  State<AddRecentscreen> createState() => _AddRecentscreenState();
}

class _AddRecentscreenState extends State<AddRecentscreen> {
  bool isList = true;
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
            onPressed: () {},
            icon: SvgPicture.asset(
              'search'.svgPath,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          ShuffleWidget(
            gridTab: () {
              setState(() {
                isList = false;
              });
            },
            listTab: () {
              setState(() {
                isList = true;
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
                                  begin: Offset(-1, 0), end: Offset.zero)
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
                                  begin: Offset(-1, 0), end: Offset.zero)
                              .animate(animation),
                          child: child,
                        );
                      },
                      child: ViewAsgrid(),
                    ),
            ),
          ),
        ],
      ).padh(12),
    );
  }
}
