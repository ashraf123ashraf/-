import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:flutter/material.dart';

class MycheckBox extends StatelessWidget {
  const MycheckBox({super.key, required this.onChanged, required this.value});
  final void Function(bool?)? onChanged;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.8,
          color: Appcolors.grey,
        ),
      ),
      width: 20,
      height: 20,
      child: Checkbox(
        checkColor: Appcolors.grey,
        fillColor: MaterialStatePropertyAll(Appcolors.white),
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
