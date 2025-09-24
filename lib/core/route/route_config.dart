import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter_newprojct/core/route/route_name.dart';

import '../../feature/screen/acouth_auth/presentation/creat_account.dart';
import '../../feature/screen/acouth_auth/presentation/login_screen.dart';
import '../../feature/screen/acouth_auth/presentation/login_two.dart';
import '../../feature/screen/acouth_auth/presentation/verify_Email.dart';
import '../../feature/screen/get_start_next/presentation/get_screen.dart';
import '../../feature/screen/get_start_next/presentation/next_screen.dart';

import '../../feature/screen/lifestyle_screen/presentation/lifestyle_screen.dart';
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
      GoRoute(
        name: RouteName.getScreen,
        path: RouteName.getScreen,
        pageBuilder: (context, state) => const MaterialPage(child: GetScreen()),
      ),
      GoRoute(
        name: RouteName.nextScreen,
        path: RouteName.nextScreen,
        pageBuilder: (context, state) => const MaterialPage(child: NextScreen()),
      ),
      GoRoute(
        name: RouteName.signIn,
        path: RouteName.signIn,
        pageBuilder: (context, state) => const MaterialPage(child: Signin()),
      ),
      GoRoute(
        name: RouteName.forgotPassword,
        path: RouteName.forgotPassword,
        pageBuilder: (context, state) => const MaterialPage(child: ForgotPassword()),
      ),
      GoRoute(
        name: RouteName.lifeBackground,
        path: RouteName.lifeBackground,
        pageBuilder: (context, state) => const MaterialPage(child: LifeStyleScreen()),
      ),

      GoRoute(
        name: RouteName.signUp,
        path: RouteName.signUp,
        pageBuilder: (context, state) => const MaterialPage(child: SignUp()),
      ),
      GoRoute(
        name: RouteName.verifyEmail,
        path: RouteName.verifyEmail,
        pageBuilder: (context, state) => const MaterialPage(child: VerifyEmail()),
      ),
    ],
  );
}