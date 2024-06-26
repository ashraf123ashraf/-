import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/core/widgets/my_BUTTON_bar.dart';
import 'package:fehres/core/widgets/second_button.dart';
import 'package:fehres/features/books/presentation/cubbit/cubit/recentadded_cubit.dart';
import 'package:fehres/features/books/presentation/cubbit/dropdown/dropdown_cubit.dart';
import 'package:fehres/features/books/presentation/view/widgets/book_details/addItem.dart';
import 'package:fehres/features/books/presentation/view/widgets/book_details/another_work.dart';
import 'package:fehres/features/books/presentation/view/widgets/book_details/body_bottom.dart';
import 'package:fehres/features/books/presentation/view/widgets/book_details/body_header.dart';
import 'package:fehres/features/books/presentation/view/widgets/book_details/dropmenu_widget.dart';
import 'package:fehres/features/books/presentation/view/widgets/book_details/qoutes_list.dart';
import 'package:fehres/features/books/presentation/view/widgets/book_details/review.dart';
import 'package:fehres/features/books/presentation/view/widgets/book_details/sliver_Appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key, this.text});
  final String? text;

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RecentaddedCubit(),
        ),
        BlocProvider(
          create: (context) => DropdownCubit(),
        ),
      ],
      child: BlocBuilder<RecentaddedCubit, RecentaddedState>(
        builder: (context, state) {
          return Scaffold(
            // appBar: homeAppbar(
            //   onTap: () => Navigator.pop(context),
            //   iconData: Icons.arrow_back_ios,
            //   text: text ?? 'ذكر شوقي منقرض',
            //   isThereAction: true,
            //   actions: [
            //     IconButton(
            //       onPressed: () {},
            //       icon: SvgPicture.asset('share'.svgPath),
            //     ),
            //   ],
            // ),
            body: MyLoadingwidget(
              errorchild: Container(),
              isError: false,
              isLoading: false,
              child: CustomScrollView(
                slivers: [
                  mYsliverAppbar(context),
                  SliverList(
                    delegate: SliverChildListDelegate(
                      addAutomaticKeepAlives: false,
                      addRepaintBoundaries: false,
                      addSemanticIndexes: false,
                      [
                        BlocBuilder<DropdownCubit, DropdownState>(
                          builder: (context, state) {
                            final cubbit =
                                BlocProvider.of<DropdownCubit>(context);
                            return Container(
                              height:
                                  state is AuthorTabbed || state is BookTabbed
                                      ? 1498
                                      : 1398,
                              width: 375,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Color(0xff000000).withOpacity(.08),
                                      blurRadius: 20,
                                      spreadRadius: 0),
                                ],
                                color: Appcolors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                ),
                              ),
                              child: Column(
                                children: [
                                  24.0.spacev,
                                  BodyHeader(),
                                  12.0.spacev,
                                  MyButtonBarWidget(
                                    textcolors: [
                                      Appcolors.Black,
                                      Appcolors.Black,
                                      Appcolors.Black,
                                      Appcolors.Black
                                    ],
                                    colors: [
                                      Appcolors.border,
                                      Appcolors.border,
                                      Appcolors.border,
                                      Appcolors.border,
                                    ],
                                    states: [
                                      false,
                                      false,
                                      false,
                                      false,
                                    ],
                                    data: [
                                      'دار دون النشر',
                                      'نشر سنة 2018',
                                      'المدة 2h 37m',
                                      '147 صفحة'
                                    ],
                                  ),
                                  12.0.spacev,
                                  SecondButton(
                                    title: "اقراء عينة",
                                    backcolor: Appcolors.white,
                                    fontcolor: Appcolors.main,
                                    img: 'read_icon',
                                  ).padh(12),
                                  12.0.spacev,
                                  AddList(),
                                  24.0.spacev,
                                  DropdownWidget(
                                    tabed: state is BookTabbed ? true : false,
                                    ontabed: state is BookUntabbed ||
                                            state is AuthorTabbed
                                        ? cubbit.booktabbed
                                        : cubbit.bookuntabbed,
                                    title: 'عن الكتاب',
                                  ),
                                  DropdownWidget(
                                    tabed: state is AuthorTabbed ? true : false,
                                    ontabed: state is AuthorUntabbed ||
                                            state is BookTabbed
                                        ? cubbit.authortabbed
                                        : cubbit.authoruntabbed,
                                    title: 'عن المؤلف',
                                  ),
                                  32.0.spacev,
                                  RviewList(),
                                  32.0.spacev,
                                  QoutesList(),
                                  32.0.spacev,
                                  AnOtherWorkWidget(
                                    isSimilar: true,
                                  ),
                                  32.0.spacev,
                                  AnOtherWorkWidget(
                                    isSimilar: false,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomBody(),
          );
        },
      ),
    );
  }
}
