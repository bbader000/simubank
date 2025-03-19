import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_app/app.dart';
import 'package:test_app/core/core.dart';

Future<void> bootstrap(Flavor env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  FlutterError.onError = (details) {
    logger.e(details.exceptionAsString());
  };
  Environment.current = env;
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(RepositoryWrapper(child: App(env: env)));
}
