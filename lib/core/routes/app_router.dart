import 'package:auto_route/auto_route.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/pages/main_list_page.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: DummyRoute.page, initial: false),
    AutoRoute(page: MainListRoute.page, initial: true),
    AutoRoute(page: SplashRoute.page, initial: false),
  ];
}
