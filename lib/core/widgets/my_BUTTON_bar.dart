import 'package:fehres/core/utils/extenstions.dart';
import 'package:fehres/core/widgets/buttonbar.dart';
import 'package:flutter/material.dart';

class MyButtonBarWidget extends StatelessWidget {
  const MyButtonBarWidget({
    super.key,
    this.data,
    this.isactive,
    this.states,
    this.ontabes,
    this.colors,
    this.textcolors,
    this.color,
    this.textcolor,
    this.isbalck,
  });
  final List? data;
  final bool? isactive;
  final List<bool>? states;
  final List<VoidCallback>? ontabes;
  final List? colors;
  final List? textcolors;
  final Color? color;
  final Color? textcolor;
  final bool? isbalck;
  @override
  Widget build(BuildContext context) {
    List items = ["دار دون النشر", 'نشر سنة 2018', "المدة 2h 37m", "147 صفحة"];
    return Container(
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data == null ? items.length : data?.length,
        itemBuilder: (context, index) => Row(
          children: [
            ButtonBaritem(
              isBlack: isbalck,
              textcolor: textcolors?[index],
              color: color ?? colors?[index],
              ontab: ontabes?[index],
              isActive: states?[index],
              text: data == null ? items[index] : data![index],
            ),
            8.0.spaceh,
          ],
        ),
      ),
    ).padh(12);
  }
}
