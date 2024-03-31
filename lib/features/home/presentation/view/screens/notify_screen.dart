import 'package:fehres/features/home/presentation/view/widgets/appbar.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/notify_item.dart';
import 'package:flutter/material.dart';

class NotifyScreen extends StatelessWidget {
  const NotifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(
        text: 'الاشعارات',
        iconData: Icons.arrow_back_ios,
        onTap: () => Navigator.pop(context),
      ),
      body: ListView.builder(
        // padding: EdgeInsets.zero,

        itemCount: 3,
        itemBuilder: (context, index) {
          return NotifyItem();
        },
      ),
    );
  }
}
