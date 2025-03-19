import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/core/widgets/global_provider_wrapper.dart';
import 'package:test_app/routing/app_routes.dart';

const _kAppTitle = 'SimuBank';

class App extends StatelessWidget {
  const App({required this.env, super.key});

  final Flavor env;

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales:
          Language.values.map((lang) => Locale(lang.code)).toList(),
      path: 'assets/translations',
      fallbackLocale: Language.fallbackLocale,
      child: const _App(),
    );
  }
}

class _App extends StatelessWidget {
  const _App();

  static AppRouter router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(430, 932),
      child: MaterialApp.router(
        title: _kAppTitle,
        routerConfig: router.config(),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        builder:
            (_, child) => GlobalProviderWrapper(child: _Unfocus(child: child!)),
        theme: AppTheme.light,
      ),
    );
  }
}

class _Unfocus extends StatelessWidget {
  const _Unfocus({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
