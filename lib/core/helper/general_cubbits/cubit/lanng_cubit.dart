import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'lanng_state.dart';

class LanngCubit extends Cubit<LanngState> {
  LanngCubit() : super(LanngInitial());
  LanngCubit get(context) => BlocProvider.of(context);

  changLang(Locale locale, BuildContext context) {
    context.setLocale(locale);
    Utils.lang = locale.languageCode;
    emit(LangChangedSuccessfully());
  }
}
