import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/features/features.dart';

class GlobalProviderWrapper extends StatelessWidget {
  const GlobalProviderWrapper({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => AuthCubit(authenticationRepository: context.read()),
        ),
      ],
      child: child,
    );
  }
}
