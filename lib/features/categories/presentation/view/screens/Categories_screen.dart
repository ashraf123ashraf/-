import 'package:fehres/core/helper/navigation_func.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/features/categories/presentation/cubbit/cubit/categories_cubit.dart';
import 'package:fehres/features/categories/presentation/view/widgets/author_tab.dart';
import 'package:fehres/features/categories/presentation/view/widgets/books_novels.dart';
import 'package:fehres/features/categories/presentation/view/widgets/publisher_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoriesCubit(),
      child: BlocConsumer<CategoriesCubit, CategoriesState>(
        listener: (context, state) {},
        builder: (context, state) {
          return DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: TabBar(
                  dividerColor: Appcolors.border,
                  dividerHeight: 1,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Appcolors.main,
                  labelPadding: EdgeInsets.only(bottom: 18),
                  // padding: EdgeInsets.symmetric(horizontal: 12),
                  tabs: [
                    MyTexT(
                      text: 'كتب وروايات',
                      type: Texttype.title,
                      fontsize: 16,
                    ),
                    MyTexT(
                      text: 'مؤلفون',
                      type: Texttype.title,
                      fontsize: 16,
                    ),
                    MyTexT(
                      text: 'دور النشر',
                      type: Texttype.title,
                      fontsize: 16,
                    )
                  ],
                ),
              ),
              body: MyLoadingwidget(
                isError: false,
                isLoading: false,
                errorchild: Container(),
                child: TabBarView(
                  children: [
                    BooksNovels(
                      ontap: () => namedRoute(
                        context,
                        RoutesName.categoriesDetails,
                      ),
                    ),
                    AuthorTab(),
                    PublisherTab(
                      ontab: () => namedRoute(
                        context,
                        RoutesName.publisherDetails,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
