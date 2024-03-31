import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/features/authors/presentation/cubbit/cubit/authors_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthorDetailsScreen extends StatelessWidget {
  const AuthorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthorsCubit(),
      child: BlocBuilder<AuthorsCubit, AuthorsState>(builder: (context, state) {
        return MyLoadingwidget(
            errorchild: Container(),
            isError: false,
            isLoading: false,
            child: Container());
      }),
    );
  }
}
