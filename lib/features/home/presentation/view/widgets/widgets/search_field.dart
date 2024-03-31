import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, this.onchange});
  final void Function(String)? onchange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchange,
      cursorColor: Appcolors.grey,
      cursorHeight: 20.0,
      decoration: InputDecoration(
        hintStyle: Utils.gethintStryle,
        hintText: 'البحث عن الكتاب او المؤلف او دار النشر',
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        constraints: BoxConstraints(maxHeight: 44),
        prefixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 20),
        // prefixIconColor: Appcolors.grey,
        prefixIcon: SvgPicture.asset(
          color: Appcolors.grey,
          width: 20,
          height: 20,
          'search'.svgPath,
        ).padh(1.8).padv(1.8),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Appcolors.border,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Appcolors.border,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Appcolors.border,
          ),
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
      ),
    );
  }
}
