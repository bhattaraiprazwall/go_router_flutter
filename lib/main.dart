import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/animated_profile.dart';
import 'package:go_router_flutter/dashboard.dart';
import 'package:go_router_flutter/error_page.dart';
import 'package:go_router_flutter/login.dart';
import 'package:go_router_flutter/profile.dart';
import 'package:go_router_flutter/route_names.dart';

void main() {
  runApp(MyApp());
}

//for login redirect
final bool isLoggedIn = true;

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'Go Router Demo', routerConfig: _router);
  }

  final GoRouter _router = GoRouter(
    errorBuilder: (context, state) {
      return const ErrorPage();
    },
    // redirect: (context, state) {
    //   if (isLoggedIn) {
    //     return '/';
    //   } else {
    //     return '/login';
    //   }
    // },
    initialLocation: '/',
    routes: [
      GoRoute(
        name: RouteNames.dashboard,
        path: '/',
        builder: (context, state) => const Dashboard(),
        routes: [
          GoRoute(
            name: RouteNames.profile,
            path: 'profile',
            builder: (context, state) =>
                Profile(name: state.uri.queryParameters['name']!),
          ),
          GoRoute(
            name: 'login',
            path: 'login',
            builder: (context, state) => const Login(),
          ),
          GoRoute(
            name: 'animated_profile',
            path: 'animated_profile',
            pageBuilder: (context, state) {
              return CustomTransitionPage(
                key: state.pageKey,
                fullscreenDialog: true,
                transitionDuration: Duration(seconds: 4),
                child: const AnimatedProfile(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                      return FadeTransition(
                        opacity: CurveTween(
                          curve: Curves.easeInOutCirc,
                        ).animate(animation),
                        child: child,
                      );
                    },
              );
            },
          ),
        ],
      ),
    ],
  );
}
