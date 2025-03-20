import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/features/features.dart';
import 'package:test_app/gen/assets.gen.dart';
import 'package:test_app/gen/locale_keys.g.dart';
import 'package:test_app/routing/routing.dart';

@RoutePage()
class HomeWrapperScreen extends StatelessWidget {
  const HomeWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthCubitState>(
      listener: (context, state) {
        if (state.isUnauthenticated) {
          context.replaceRoute(const LoginRoute());
        }
      },
      child: BlocProvider(
        create:
            (context) => ProfileCubit(authenticationRepository: context.read()),
        child: const AutoRouter(),
      ),
    );
  }
}

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return BlocProvider(
      create:
          (context) => TransactionCubit(transactionsRepository: context.read()),
      child: MainScaffold(
        body: const HomeBody(),
        appBar: AppBar(
          backgroundColor: colors.background,
          actionsPadding: EdgeInsets.zero,
          leading: TappableView(
            onTap: context.read<AuthCubit>().logOut,
            child: Assets.icons.logOut.image(color: colors.mainRed),
          ),
          actions: const [_ThemeSwitcher()],
          centerTitle: true,
          title: H1Text(
            LocaleKeys.transactions_transactions.tr(),
            color: colors.mainBlue,
          ),
        ),
      ),
    );
  }
}

class _ThemeSwitcher extends StatelessWidget {
  const _ThemeSwitcher();

  @override
  Widget build(BuildContext context) {
    final currentTheme = context.watch<ThemeModeCubit>().state;
    final colors = context.colors;
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Switch(
        activeColor: colors.mainBlue,
        value: currentTheme.isLight,
        onChanged:
            (_) => context.read<ThemeModeCubit>().onThemeModeChanged(
              currentTheme.isLight ? ThemeMode.dark : ThemeMode.light,
            ),

        thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
          (_) =>
              currentTheme.isDark
                  ? Icon(Icons.nightlight_round, color: colors.mainWhite)
                  : Icon(Icons.wb_sunny, color: colors.mainWhite),
        ),
      ),
    );
  }
}
