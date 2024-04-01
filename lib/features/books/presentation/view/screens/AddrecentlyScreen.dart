import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/helper/navigation_func.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/core/strings/localKeys.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/features/books/presentation/cubbit/cubit/recentadded_cubit.dart';
import 'package:fehres/features/books/presentation/view/widgets/body_book.dart';
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
                child: BodyBoo());
          },
        ),
      ).padh(12),
    );
  }
}
