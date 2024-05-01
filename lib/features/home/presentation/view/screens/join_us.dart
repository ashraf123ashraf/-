import 'package:fehres/core/helper/navigation_func.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/drpoformfield.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/core/widgets/my_button.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:fehres/core/widgets/my_textform_field.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/bottomtext.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/upload_container.dart';
import 'package:flutter/material.dart';

class JoinUsScreen extends StatelessWidget {
  const JoinUsScreen({super.key});
  Widget fielditem(
      {int? maxlines,
      Color? bordercolor,
      Color? backgroundcolor,
      Color? focusbordercolor,
      Color? focusbackgroundcolor,
      String? label,
      String? hint,
      double? maxheight}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTexT(
          text: label ?? '',
          fontsize: 13,
          fontWeight: FontWeight.w500,
          color: Appcolors.Black,
        ),
        2.0.spacev,
        MyTextFormField(
          maxheight: maxheight == 0 ? null : maxheight ?? 54,
          maxlines: maxlines,
          backgroundcolor: backgroundcolor,
          bordercolor: bordercolor,
          focusbackgroundcolor: focusbackgroundcolor,
          focusbordercolor: focusbordercolor,
          hint: hint,
        ),
      ],
    );
  }

  Widget dropfielditem({
    Color? bordercolor,
    Color? backgroundcolor,
    String? label,
    String? hint,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTexT(
          text: label ?? '',
          fontsize: 13,
          fontWeight: FontWeight.w500,
          color: Appcolors.Black,
        ),
        2.0.spacev,
        DropField(
          hint: hint,
          height: 54,
          backgroundcolor: backgroundcolor,
          bordercolor: bordercolor,
        ),
      ],
    );
  }

  radioitem({String? label, val, groupval}) {
    return Row(
      children: [
        SizedBox(
          width: 18,
          height: 18,
          child: Radio(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            fillColor: MaterialStatePropertyAll(
              Appcolors.Black,
            ),
            value: val,
            groupValue: groupval,
            onChanged: (val) {},
          ),
        ),
        12.0.spaceh,
        MyTexT(
          text: label ?? '',
          color: Appcolors.Black,
          fontsize: 13,
          fontWeight: FontWeight.w500,
        )
      ],
    );
  }

  rowfiled({
    String? intialval,
    Color? backgroundcolor,
    Color? bordercolor,
    String? hint,
    String? label,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTexT(
          text: label ?? '',
          fontsize: 13,
          fontWeight: FontWeight.w500,
          color: Appcolors.Black,
        ),
        2.0.spacev,
        Row(
          children: [
            Expanded(
              flex: 5,
              child: DropField(
                height: 54,
                backgroundcolor: backgroundcolor,
                bordercolor: bordercolor,
                intialvalue: intialval,
              ),
            ),
            8.0.spaceh,
            Expanded(
              flex: 10,
              child: MyTextFormField(
                maxheight: 54,
                backgroundcolor: backgroundcolor,
                bordercolor: bordercolor,
                hint: hint,
              ),
            ),
          ],
        ),
      ],
    );
  }

  dateField({
    String? intialval,
    Color? backgroundcolor,
    Color? bordercolor,
    String? hint,
    String? hint1,
    String? hint2,
    String? label,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTexT(
          text: label ?? '',
          fontsize: 13,
          fontWeight: FontWeight.w500,
          color: Appcolors.Black,
        ),
        2.0.spacev,
        Row(
          children: [
            Expanded(
              flex: 5,
              child: DropField(
                hint: hint,
                height: 54,
                backgroundcolor: backgroundcolor,
                bordercolor: bordercolor,
                intialvalue: intialval,
              ),
            ),
            8.0.spaceh,
            Expanded(
              flex: 5,
              child: DropField(
                height: 54,
                hint: hint1,
                backgroundcolor: backgroundcolor,
                bordercolor: bordercolor,
                intialvalue: intialval,
              ),
            ),
            8.0.spaceh,
            Expanded(
              flex: 5,
              child: DropField(
                height: 54,
                hint: hint2,
                backgroundcolor: backgroundcolor,
                bordercolor: bordercolor,
                intialvalue: intialval,
              ),
            ),
          ],
        ),
      ],
    );
  }

  genderfield({
    String? val1,
    String? val2,
    String? groupval1,
    String? groupval2,
    String? label1,
    String? label2,
    String? title,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTexT(
          text: title ?? '',
          fontsize: 13,
          fontWeight: FontWeight.w500,
          color: Appcolors.Black,
        ),
        8.0.spacev,
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            radioitem(
              label: 'ذكر',
              val: 'ذكر',
              groupval: 'ذكر',
            ),
            40.0.spaceh,
            radioitem(
              label: 'انثي',
              val: "انثي",
              groupval: "ذكر",
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        text: "انضم الينا",
        iconData: Icons.arrow_back_ios,
        onTap: () => Navigator.pop(context),
      ),
      body: MyLoadingwidget(
        isError: false,
        isLoading: false,
        errorchild: Container(),
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.0.spacev,
              fielditem(
                hint: 'ادخل الاسم بالكامل',
                backgroundcolor: Appcolors.white,
                label: "الاسم بالكامل",
                bordercolor: Appcolors.border,
                focusbackgroundcolor: Appcolors.white,
                focusbordercolor: Appcolors.main,
              ),
              20.0.spacev,
              fielditem(
                hint: 'ادخل البريد الالكتروني',
                backgroundcolor: Appcolors.white,
                label: "البريد الالكتروني",
                bordercolor: Appcolors.border,
                focusbackgroundcolor: Appcolors.white,
                focusbordercolor: Appcolors.main,
              ),
              20.0.spacev,
              rowfiled(
                hint: "ادخل رقم الهاتف",
                label: "رقم الهاتف",
                intialval: '+966',
                backgroundcolor: Appcolors.white,
                bordercolor: Appcolors.border,
              ),
              20.0.spacev,
              dateField(
                label: "تاريخ الميلاد",
                hint1: "شهر",
                hint: "يوم",
                hint2: "سنة",
                backgroundcolor: Appcolors.white,
                bordercolor: Appcolors.border,
              ),
              20.0.spacev,
              genderfield(
                groupval1: 'ذكر',
                groupval2: "ذكر",
                val1: 'ذكر',
                val2: "انثي",
                title: "الجنس",
                label1: "ذكر",
                label2: "انثي",
              ),
              20.0.spacev,
              dropfielditem(
                hint: "ادخل الدولة",
                label: "الدولة",
                backgroundcolor: Appcolors.white,
                bordercolor: Appcolors.border,
              ),
              20.0.spacev,
              fielditem(
                hint: "ادخل المدينة",
                bordercolor: Appcolors.border,
                label: "المدينة",
                backgroundcolor: Appcolors.white,
                focusbordercolor: Appcolors.main,
              ),
              20.0.spacev,
              dropfielditem(
                hint: "ادخل فئة الكتاب",
                label: "فئة الكتاب",
                backgroundcolor: Appcolors.white,
                bordercolor: Appcolors.border,
              ),
              20.0.spacev,
              fielditem(
                maxheight: 0,
                maxlines: 4,
                hint: "ادخل نبذة قصيرة عن الكتاب ....",
                bordercolor: Appcolors.border,
                label: "محتوي الكتاب",
                backgroundcolor: Appcolors.white,
                focusbordercolor: Appcolors.main,
              ),
              20.0.spacev,
              UploadContain(),
              32.0.spacev,
              BottomText(
                ontap: () => namedRoute(
                  context,
                  RoutesName.publisherpolicyscreen,
                ),
              ),
              32.0.spacev,
              MyButton(title: 'ارسال الطلب'),
              40.0.spacev,
            ],
          ),
        ).padh(18),
      ),
    );
  }
}
