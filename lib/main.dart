import 'package:easy_localization/easy_localization.dart';
import 'package:fehres/core/helper/general_cubbits/cubit/lanng_cubit.dart';
import 'package:fehres/core/helper/routes/App_router.dart';
import 'package:fehres/core/helper/routes/routesname.dart';
import 'package:fehres/core/theme/apptheme/app_theme.dart';
import 'package:fehres/core/utils/config.dart';
import 'package:fehres/core/utils/locator.dart' as di;
import 'package:fehres/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await di.locatorInit();
  runApp(
    EasyLocalization(
      startLocale: Locale('ar', 'EG'),
      saveLocale: true,
      child: MyApp(),
      supportedLocales: [
        Locale('ar', 'EG'),
        Locale('en', 'US'),
      ],
      path: 'assets/translations',
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LanngCubit(),
          ),
        ],
        child: BlocBuilder<LanngCubit, LanngState>(builder: (context, state) {
          Utils.lang = context.locale.languageCode;
          Utils.rebuildAllchildren(context);
          return MaterialApp(
            scrollBehavior: MyScrollbeha(),
            debugShowCheckedModeBanner: false,
            title: "فهرس",
            // navigatorKey: Utils.navigatorKey,
            theme: AppTheme.theme,
            themeAnimationCurve: Curves.easeInOutCubic,
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            onGenerateRoute: AppRoute.generateRoute,
            initialRoute: RoutesName.home,
          );
        }),
      ),
    );
  }
}
