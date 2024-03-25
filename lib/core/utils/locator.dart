import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final Ml = GetIt.instance;

Future<void> locatorInit() async {
  Ml.registerLazySingleton(() => GlobalKey<NavigatorState>());
  Ml.registerLazySingleton(() => GlobalKey<ScaffoldState>());
}
