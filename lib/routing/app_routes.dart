import 'package:auto_route/auto_route.dart';
import 'package:test_app/features/features.dart';
import 'package:test_app/routing/routing.dart';

part 'app_routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: LoginRoute.page),
    AutoRoute(
      initial: true,
      page: HomeWrapperRoute.page,
      guards: [AuthGuard()],
      children: [AutoRoute(initial: true, page: HomeRoute.page)],
    ),
  ];
}
