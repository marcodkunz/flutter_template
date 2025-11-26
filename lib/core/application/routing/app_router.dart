import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../features/home/application/timer_bloc.dart';
import '../../../features/home/presentation/home_page.dart';
import '../../../features/profile/application/counter_cubit.dart';
import '../../../features/profile/presentation/profile_page.dart';
import '../../../features/startup/application/splash_bloc.dart';
import '../../../features/startup/presentation/splash_page.dart';
import '../../presentation/widgets/scaffold_with_bottom_nav_bar.dart';
import '../di/service_locator.dart';
import 'page.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final GlobalKey<NavigatorState> profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

class AppRouter {
  AppRouter() {
    _initRouter();
  }

  late GoRouter mainRouter;

  void go(String location, {Object? extra}) => mainRouter.go(location, extra: extra);

  Future<T?> push<T extends Object?>(String location, {Object? extra}) async => mainRouter.push(location, extra: extra);

  void _initRouter() {
    mainRouter = GoRouter(
      debugLogDiagnostics: true,
      navigatorKey: rootNavigatorKey,
      initialLocation: Pages.splash.navigationPath,
      routes: <RouteBase>[
        GoRoute(path: '/${Pages.splash.path}', name: Pages.splash.name, builder: _splashPageBuilder),
        StatefulShellRoute.indexedStack(
          builder: (BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) {
            return ScaffoldWithBottomNavBar(navigationShell: navigationShell);
          },
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              navigatorKey: homeNavigatorKey,
              routes: <RouteBase>[GoRoute(path: '/${Pages.home.path}', name: Pages.home.name, builder: _homePageBuilder)],
            ),
            StatefulShellBranch(
              navigatorKey: profileNavigatorKey,
              routes: <RouteBase>[GoRoute(path: '/${Pages.profile.path}', name: Pages.profile.name, builder: _profilePageBuilder)],
            ),
          ],
        ),
      ],
      redirect: (BuildContext context, GoRouterState state) async {
        return null;
      },
    );
  }

  static Widget _splashPageBuilder(BuildContext context, GoRouterState state) {
    return BlocProvider<SplashBloc>.value(value: sl<SplashBloc>()..add(SplashCheck()), child: const SplashPage());
  }

  static Widget _homePageBuilder(BuildContext context, GoRouterState state) {
    return BlocProvider<TimerBloc>.value(value: sl<TimerBloc>(), child: const HomePage());
  }

  static Widget _profilePageBuilder(BuildContext context, GoRouterState state) {
    return BlocProvider<CounterCubit>.value(value: sl<CounterCubit>(), child: const ProfilePage());
  }
}
