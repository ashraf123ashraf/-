import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/core/widgets/my_BUTTON_bar.dart';
import 'package:fehres/features/library/presentation/cubbit/cubit/library_cubit.dart';
import 'package:fehres/features/library/presentation/view/widgets/favorite_body.dart';
import 'package:fehres/features/library/presentation/view/widgets/have_read.dart';
import 'package:fehres/features/library/presentation/view/widgets/intented_body.dart';
import 'package:fehres/features/library/presentation/view/widgets/still_read_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  void initState() {
    BlocProvider.of<LibraryCubit>(context).favouriteRead();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LibraryCubit, LibraryState>(
      builder: (context, state) {
        LibraryCubit cubbitt = BlocProvider.of<LibraryCubit>(context);
        return Scaffold(
          appBar: homeAppbar(
            text: 'مكتبتي',
          ),
          body: MyLoadingwidget(
            errorchild: Container(),
            isError: false,
            isLoading: state is Loading ? true : false,
            child: Container(
              child: Column(
                children: [
                  MyButtonBarWidget(
                    isbalck: true,
                    textcolor: Appcolors.Black,
                    ontabes: [
                      cubbitt.favouriteRead,
                      cubbitt.haveRead,
                      cubbitt.stillRead,
                      cubbitt.intentedToread
                    ],
                    states: <bool>[
                      state is FavouriteLoaded,
                      state is HaveRead,
                      state is StillRead,
                      state is IntendedToRead
                    ],
                    data: ['كتب مفضلة', "قرأته", "اقراءه حاليا", "أنوي قراءته"],
                  ),
                  28.0.spacev,
                  state is FavouriteLoaded
                      ? FavoriteBody()
                      : state is HaveRead
                          ? HaveReadBody()
                          : state is IntendedToRead
                              ? IntentedBody()
                              : state is StillRead
                                  ? StillBody()
                                  : Container(),
                ],
              ),
            ),
          ),
        ).padh(12);
      },
    );
  }
}
