import 'package:flutter/material.dart';

MaterialPageRoute materialpage(Widget screenName) {
  return MaterialPageRoute(builder: (_) => screenName);
}

void namedRoute(BuildContext context, String routename) {
  Navigator.pushNamed(context, routename);
}
