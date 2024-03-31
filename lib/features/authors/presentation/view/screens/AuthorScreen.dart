import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/features/authors/presentation/cubbit/cubit/authors_cubit.dart';
import 'package:fehres/features/authors/presentation/view/widgets/auther_item.dart';
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
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 12,
                  childAspectRatio: 6 / 9,
                ),
                itemBuilder: (context, index) {
                  return AuthorItem();
                },
              ),
            );
          },
        ),
      ).padh(12).padt(24),
    );
  }
}