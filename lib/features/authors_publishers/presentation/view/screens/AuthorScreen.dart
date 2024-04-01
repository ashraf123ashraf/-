import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/features/authors_publishers/presentation/cubbit/cubit/authors_cubit.dart';
import 'package:fehres/features/authors_publishers/presentation/view/widgets/Author_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthorScreen extends StatelessWidget {
  const AuthorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        iconData: Icons.arrow_back_ios,
        onTap: () => Navigator.pop(context),
        text: 'اشهر المؤلفون',
      ),
      body: BlocProvider(
        create: (context) => AuthorsCubit(),
        child: BlocBuilder<AuthorsCubit, AuthorsState>(
          builder: (context, state) {
            return MyLoadingwidget(
              errorchild: Container(),
              isLoading: false,
              isError: false,
              child: AuthorBody(),
            );
          },
        ),
      ),
    );
  }
}
