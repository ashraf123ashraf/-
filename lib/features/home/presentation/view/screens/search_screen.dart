import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/features/home/presentation/cubbit/cubit/home_cubit.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchVal = '';
  Widget buildSearchresult() {
    return DefaultTabController(
      length: 3,
      child: Expanded(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Appcolors.tbbarshabow.withOpacity(.09),
                      blurRadius: 10,
                      spreadRadius: 0,
                      offset: Offset(0, 4),
                    ),
                  ],
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Appcolors.ofWhite,
                    ),
                  ),
                  color: Appcolors.white,
                ),
                child: TabBar(
                  dividerColor: Appcolors.border,
                  dividerHeight: 1,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Appcolors.main,
                  labelPadding: EdgeInsets.only(bottom: 18),
                  tabs: [
                    MyTexT(
                      fontsize: 14,
                      text: 'كتب وروايات',
                      type: Texttype.title,
                    ),
                    MyTexT(
                      fontsize: 14,
                      text: 'مؤلفون',
                      type: Texttype.title,
                    ),
                    MyTexT(
                      fontsize: 14,
                      text: 'دور النشر',
                      type: Texttype.title,
                    ),
                  ],
                ),
              ),
            ),
            17.0.spacev,
            Expanded(
              flex: 14,
              child: TabBarView(
                children: [
                  Center(
                    child: Text('Content of Tab 1'),
                  ),
                  Center(
                    child: Text('Content of Tab 2'),
                  ),
                  Center(
                    child: Text('Content of Tab 3'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildnonSearch() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTexT(
          text: 'اخر الزيارات',
          type: Texttype.title,
        ),
        14.0.spacev,
        SizedBox(
          height: 180,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('book'.imagepath),
                        ),
                      ),
                      child: Image.asset(
                        'book'.imagepath,
                      ),
                    ),
                    14.0.spaceh,
                  ],
                );
              }),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.white,
      appBar: homeAppbar(
        onTap: () => Navigator.pop(context),
        iconData: Icons.arrow_back_ios,
      ),
      body: BlocProvider(
        create: (context) => HomeCubit(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return MyLoadingwidget(
              errorchild: Container(),
              isError: false,
              isLoading: false,
              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SearchField(
                      onchange: (val) {
                        searchVal = val;
                        setState(() {});
                      },
                    ),
                    24.0.spacev,
                    searchVal.isEmpty ? buildnonSearch() : buildSearchresult(),
                  ],
                ),
              ).padh(12),
            );
          },
        ),
      ),
    );
  }
}
