import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/features/features.dart';
import 'package:test_app/routing/app_routes.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthCubitState>(
      listener: (context, state) {
        if (state.isAuthenticated) {
          context.replaceRoute(const HomeRoute());
        }
      },
      child: const MainScaffold(body: LoginBody()),
    );
  }
}
