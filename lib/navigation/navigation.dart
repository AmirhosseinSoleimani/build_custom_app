import 'package:flutter/material.dart';
import 'package:flutter_training/flutter_training.dart';
import 'package:go_router/go_router.dart';
import 'package:home_page/home_page.dart';
import 'package:setting/setting.dart';

import '../bottom_navigation/view/bottom_navigation_screen.dart';

class Navigation {
  static final Navigation _instance = Navigation._internal();

  static Navigation get instance => _instance;
  static late final GoRouter router;

  BuildContext get context =>
      router.routerDelegate.navigatorKey.currentContext!;

  GoRouterDelegate get routerDelegate => router.routerDelegate;

  GoRouteInformationParser get routeInformationParser =>
      router.routeInformationParser;
  static final GlobalKey<NavigatorState> parentNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> homeTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> reliefTabNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> surveyTabNavigatorKey =
  GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> subscriptionTabNavigatorKey =
  GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> profileTabNavigatorKey =
  GlobalKey<NavigatorState>();

  factory Navigation() {
    return _instance;
  }

  Navigation._internal() {
    final routes = [
      StatefulShellRoute.indexedStack(
        parentNavigatorKey: parentNavigatorKey,
        branches: [
          StatefulShellBranch(
            navigatorKey: homeTabNavigatorKey,
            routes: [
              GoRoute(
                path: HomePageScreen.homePage,
                pageBuilder: (context, GoRouterState state) {
                  return getPage(
                    child: const HomePageScreen(),
                    state: state,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: subscriptionTabNavigatorKey,
            routes: [
              GoRoute(
                path: FlutterTrainingScreen.flutterTraining,
                pageBuilder: (context, state) {
                  return getPage(
                    child: const FlutterTrainingScreen(),
                    state: state,
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: reliefTabNavigatorKey,
            routes: [
              GoRoute(
                path: SettingScreen.setting,
                pageBuilder: (context, state) {
                  return getPage(
                    child: const SettingScreen(),
                    state: state,
                  );
                },
              ),
            ],
          ),
        ],
        pageBuilder: (
            BuildContext context,
            GoRouterState state,
            StatefulNavigationShell navigationShell,
            ) {
          return getPage(
            child: BottomNavigationPage(
              child: navigationShell,
            ),
            state: state,
          );
        },
      ),
    ];

    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: HomePageScreen.homePage,
      routes: routes,
    );
  }

  static Page getPage({
    required Widget child,
    required GoRouterState state,
  }) {
    return CustomTransitionPage(
      transitionDuration: Duration.zero,
      key: state.pageKey,
      child: child,
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) => child,
    );
  }
}
