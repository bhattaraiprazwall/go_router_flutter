import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/dashboard.dart';
import 'package:go_router_flutter/profile.dart';
import 'package:go_router_flutter/route_names.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(title: 'Go Router Demo', routerConfig: _router);
  }

  final GoRouter _router = GoRouter(
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
        ],
      ),
    ],
  );
}
