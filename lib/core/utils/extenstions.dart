import 'package:easy_localization/easy_localization.dart';

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
