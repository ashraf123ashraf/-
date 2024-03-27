import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:flutter/material.dart';

class Myspinner extends StatefulWidget {
  const Myspinner({super.key});

  @override
  State<Myspinner> createState() => _MyspinnerState();
}

class _MyspinnerState extends State<Myspinner>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(
          seconds: 2,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: ColorTween(begin: Appcolors.main, end: Appcolors.second)
            .animate(_animationController),
      ),
    );
  }
}
