import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/features/books/presentation/cubbit/cubit/recentadded_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecentaddedCubit(),
      child: BlocBuilder<RecentaddedCubit, RecentaddedState>(
        builder: (context, state) {
          return Scaffold(
            appBar: homeAppbar(
              onTap: () => Navigator.pop(context),
              iconData: Icons.arrow_back_ios,
              text: text ?? 'ما لا نبوح به',
              isThereAction: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('share'.svgPath),
                ),
              ],
            ),
            body: MyLoadingwidget(
                child: Container(),
                errorchild: Container(),
                isError: false,
                isLoading: false),
          );
        },
      ),
    );
  }
}
