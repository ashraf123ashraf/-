import 'package:fehres/features/books/presentation/view/widgets/view_as_grid.dart';
import 'package:fehres/features/books/presentation/view/widgets/view_as_list.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/ShuffleWidget.dart';
import 'package:flutter/cupertino.dart';

class BodyBoo extends StatefulWidget {
  const BodyBoo({super.key});

  @override
  State<BodyBoo> createState() => _BodyBooState();
}

class _BodyBooState extends State<BodyBoo> {
  bool isList = true;
  int iconindex = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShuffleWidget(
          iconindex: iconindex,
          gridTab: () {
            setState(() {
              isList = false;
              iconindex = 2;
            });
          },
          listTab: () {
            setState(() {
              isList = true;
              iconindex = 1;
            });
          },
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            child: isList
                ? AnimatedSwitcher(
                    duration: Duration(milliseconds: 700),
                    transitionBuilder: (child, animation) {
                      return SlideTransition(
                        position: Tween<Offset>(
                                begin: Offset(-1, 0), end: Offset.zero)
                            .animate(animation),
                        child: child,
                      );
                    },
                    child: ViewASList(),
                  )
                : AnimatedSwitcher(
                    duration: Duration(milliseconds: 700),
                    transitionBuilder: (child, animation) {
                      return SlideTransition(
                        position: Tween<Offset>(
                                begin: Offset(-1, 0), end: Offset.zero)
                            .animate(animation),
                        child: child,
                      );
                    },
                    child: ViewAsgrid(),
                  ),
          ),
        ),
      ],
    );
  }
}
