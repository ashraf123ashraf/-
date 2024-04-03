import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/core/widgets/my_BUTTON_bar.dart';
import 'package:fehres/features/library/presentation/cubbit/cubit/library_cubit.dart';
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
    BlocProvider.of<LibraryCubit>(context).haveRead();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    LibraryCubit cubbitt = BlocProvider.of<LibraryCubit>(context);
    return BlocProvider(
      create: (context) => LibraryCubit(),
      child: BlocBuilder<LibraryCubit, LibraryState>(
        builder: (context, state) {
          return Scaffold(
            appBar: homeAppbar(
              text: 'مكتبتي',
              iconData: Icons.arrow_back_ios,
              onTap: () =>
                  Navigator.canPop(context) ? Navigator.pop(context) : null,
            ),
            body: MyLoadingwidget(
              errorchild: Container(),
              isError: false,
              isLoading: false,
              child: Container(
                child: Column(
                  children: [
                    MyButtonBarWidget(
                      ontabes: [
                        () => cubbitt.favouriteRead,
                        () => cubbitt.haveRead,
                        () => cubbitt.stillRead,
                        () => cubbitt.intentedToread
                      ],
                      states: <bool>[
                        state is FavouriteLoaded,
                        state is HaveRead,
                        state is StillRead,
                        state is IntendedToRead
                      ],
                      data: [
                        'كتب مفضلة',
                        "قرأته",
                        "اقراءه حاليا",
                        "أنوي قراءته"
                      ],
                    )
                  ],
                ),
              ),
            ),
          ).padh(12);
        },
      ),
    );
  }
}
