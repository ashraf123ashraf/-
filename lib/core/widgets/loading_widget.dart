import 'package:fehres/core/widgets/spinner.dart';
import 'package:flutter/material.dart';

class MyLoadingwidget extends StatelessWidget {
  const MyLoadingwidget(
      {super.key,
      required this.child,
      required this.errorchild,
      required this.isError,
      required this.isLoading,
      this.anotherChild,
      this.anotherError});
  final bool isError;
  final bool isLoading;
  final Widget child;
  final Widget errorchild;
  final Widget? anotherChild;
  final Widget? anotherError;
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? Myspinner()
        : isError
            ? anotherError ?? errorchild
            : anotherChild ?? child;
  }
}
