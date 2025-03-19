import 'package:auto_route/auto_route.dart';
import 'package:network_client/network_client.dart';
import 'package:test_app/routing/app_routes.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final utils = LocalStorageUtils();
    final userId = await utils.getString(utils.userIdKey);
    if (userId == null) {
      await router.replaceAll([const LoginRoute()]);
      return;
    }
    resolver.next();
  }
}
