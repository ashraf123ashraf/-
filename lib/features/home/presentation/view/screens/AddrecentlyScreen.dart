import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/features/home/presentation/view/widgets/Addrecently/ShuffleWidget.dart';
import 'package:fehres/features/home/presentation/view/widgets/Addrecently/view_as_list.dart';
import 'package:fehres/features/home/presentation/view/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class AddRecentscreen extends StatelessWidget {
  const AddRecentscreen({super.key});

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
            gridTab: () {},
            listTab: () {},
          ),
          Expanded(
            child: ViewASList(),
          ),
        ],
      ).padh(12),
    );
  }
}
