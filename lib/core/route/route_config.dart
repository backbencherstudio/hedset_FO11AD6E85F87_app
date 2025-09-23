import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_newprojct/core/route/route_name.dart';

import '../../feature/screen/splash_screen/presentation/app_background.dart';
import '../../feature/screen/splash_screen/presentation/lifestyle_screen.dart';
import '../../feature/screen/splash_screen/presentation/splash_screen.dart';
import '../../feature/screen/splash_screen/presentation/splash_two.dart';

class RouteConfig {
  static final GoRouter goRouter = GoRouter(
    initialLocation: RouteName.splashScreen,
    routes: [
      GoRoute(
        name: RouteName.lifeScreen,
        path: RouteName.lifeScreen,
        pageBuilder: (context, state) => const MaterialPage(child: LifeScreen()),
      ),
      GoRoute(
        name: RouteName.loadingScreen,
        path: RouteName.loadingScreen,
        pageBuilder: (context, state) => const MaterialPage(child: LoadingScreen()),
      ),
      GoRoute(
        name: RouteName.splashScreen,
        path: RouteName.splashScreen,
        pageBuilder: (context, state) => const MaterialPage(child: SplashScreen()),
      ),
      // Optional: Add home screen route
      // GoRoute(
      //   name: 'homeScreen',
      //   path: '/home',
      //   pageBuilder: (context, state) => const MaterialPage(child: MyHomePage(title: 'Flutter Demo Home Page')),
      // ),
    ],
  );
}