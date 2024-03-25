import 'package:flutter/material.dart';

CustomRoute materialpage(Widget screenName, {AxisDirection? direction}) {
  return CustomRoute(child: screenName, direction: direction);
}

void namedRoute(BuildContext context, String routename) {
  Navigator.pushNamed(context, routename);
}

class CustomRoute extends PageRouteBuilder {
  final Widget child;
  final AxisDirection? direction;

  @override
  CustomRoute({required this.child, this.direction})
      : super(
          pageBuilder: (context, animation1, animation2) {
            return SlideTransition(
              position: Tween<Offset>(
                      begin: getbeginOffest(
                        direction ?? AxisDirection.right,
                      ),
                      end: Offset.zero)
                  .animate(animation1),
              child: child,
            );
          },
        );
}

Offset? getbeginOffest(AxisDirection direction) {
  switch (direction) {
    case AxisDirection.right:
      return Offset(1, 0);
    case AxisDirection.left:
      return Offset(-1, 0);
    case AxisDirection.up:
      return Offset(0, 1);
    case AxisDirection.down:
      return Offset(0, -1);
  }
}
