import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/features/features.dart';
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
    return const Scaffold(body: HomeBody());
  }
}
