import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

extension photo on String {
  String get svgPath => 'assets/icons/$this.svg';
  String get imagepath => "assets/images/$this.png";
}

extension dateformatt on String {
  formatdate() {
    DateTime dateTime = DateTime.parse(this);
    return DateFormat.yMd().format(dateTime);
  }
}

extension pad on Widget {
  Padding padh(double value) => Padding(
        child: this,
        padding: EdgeInsets.symmetric(horizontal: value),
      );
  Padding padv(double value) => Padding(
        child: this,
        padding: EdgeInsets.symmetric(vertical: value),
      );
}

extension space on double {
  SizedBox get spaceh => SizedBox(
        width: this,
      );
  SizedBox get spacev => SizedBox(
        height: this,
      );
}
