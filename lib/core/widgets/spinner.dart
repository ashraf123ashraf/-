import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:flutter/material.dart';

class Myspinner extends StatelessWidget {
  const Myspinner({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Appcolors.main),
        ),
      ),
    );
  }
}
