import 'package:authentication_repository/authentication_repository.dart';
import 'package:data_repositories/data_repositories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:network_client/network_client.dart';
import 'package:test_app/core/core.dart';

class RepositoryWrapper extends StatelessWidget {
  const RepositoryWrapper({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final env = Environment.current;
    final initClient = NetworkClient(
      initClient: InitClient(
        basePrivateUrl: env.basePrivateUrl,
        basePublicUrl: env.basePublicUrl,
      ),
    );

    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (_) => AuthenticationRepository(initClient)),
        RepositoryProvider(create: (_) => TransactionsRepository(initClient)),
      ],
      child: child,
    );
  }
}
