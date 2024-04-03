import 'package:fehres/core/theme/colortheme/colors.dart';
import 'package:fehres/core/widgets/loading_widget.dart';
import 'package:fehres/core/widgets/my_customtext.dart';
import 'package:flutter/cupertino.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({super.key});

  get title => null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: MyLoadingwidget(
        errorchild: Container(),
        isLoading: false,
        isError: false,
        child: Container(
          height: 44,
          decoration: BoxDecoration(
            color: Appcolors.main,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: MyTexT(
              textAlign: TextAlign.center,
              text: title,
              fontsize: 14,
              color: Appcolors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
