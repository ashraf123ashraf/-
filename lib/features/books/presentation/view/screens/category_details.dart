import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/features/books/presentation/cubbit/cubit/recentadded_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class CategoreyDetailsScreen extends StatelessWidget {
  const CategoreyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecentaddedCubit(),
      child: Scaffold(
        appBar: homeAppbar(
          text: 'روايات',
          iconData: Icons.arrow_back_ios,
          onTap: () => Navigator.pop(context),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'search'.svgPath,
              ),
            ),
          ],
        ),
        body: MyLoadingwidget(
          errorchild: Container(),
          isError: false,
          isLoading: false,
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
