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
  });
  final List? data;
  final bool? isactive;
  final List<bool>? states;
  final List<VoidCallback>? ontabes;
  @override
  Widget build(BuildContext context) {
    List items = ['نشر سنة 2018', "المدة 2h 37m", "147 صفحة"];
    return Container(
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data == null ? items.length : data!.length,
        itemBuilder: (context, index) => Row(
          children: [
            ButtonBaritem(
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
