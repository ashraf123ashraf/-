import 'package:drop_down_search_field/drop_down_search_field.dart';
import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/material.dart';

class DropField extends StatelessWidget {
  const DropField(
      {super.key,
      this.backgroundcolor,
      this.bordercolor,
      this.hint,
      this.intialvalue,
      this.height,
      this.width});
  final String? hint;
  final Color? bordercolor;
  final Color? backgroundcolor;
  final String? intialvalue;
  final double? width;
  final double? height;
  OutlineInputBorder? fieldBorder(Color? color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 1,
        color: color ?? Appcolors.main,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List data = ['content1', 'content2', 'content3', 'content4'];
    return DropDownSearchFormField(
      initialValue: intialvalue,
      textFieldConfiguration: TextFieldConfiguration(
        autofocus: false,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
            fontSize: 13,
            color: Appcolors.grey,
            fontWeight: FontWeight.w300,
          ),
          constraints: BoxConstraints(
            maxHeight: height ?? 44,
          ),
          suffixIcon: Icon(Icons.arrow_drop_down),
          border: fieldBorder(bordercolor),
          focusedBorder: fieldBorder(bordercolor),
          enabledBorder: fieldBorder(bordercolor),
        ),
      ),
      suggestionsBoxDecoration: SuggestionsBoxDecoration(
        color: Appcolors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Appcolors.border,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      onSuggestionSelected: (value) {},
      itemBuilder: (context, suggestion) {
        return MyTexT(
          text: suggestion.toString(),
        );
      },
      suggestionsCallback: (value) async {
        return data.map((e) => null);
      },
    );
  }
}
