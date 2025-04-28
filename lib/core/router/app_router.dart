import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/register_screen.dart';
import '../../features/auth/presentation/screens/not_login_screen.dart';
import '../../features/auth/domain/auth_provider.dart';
import '../../features/auth/presentation/screens/home_screen.dart';
import 'package:provider/provider.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          final authProvider =
              Provider.of<AuthProvider>(context, listen: false);
          return authProvider.token != null ? HomeScreen() : NotLoginScreen();
        },
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) => LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (BuildContext context, GoRouterState state) =>
            RegisterScreen(),
      ),
    ],
  );
}
