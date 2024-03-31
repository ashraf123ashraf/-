import 'package:fehres/core/widgets/appbar.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/features/home/presentation/view/widgets/widgets/notify_error.dart';
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
      body: MyLoadingwidget(
        anotherError: NotifyError(),
        errorchild: Container(),
        isError: true,
        isLoading: false,
        child: ListView.builder(
          // padding: EdgeInsets.zero,

          itemCount: 3,
          itemBuilder: (context, index) {
            return NotifyItem();
          },
        ),
      ),
    );
  }
}
