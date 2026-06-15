import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/route_names.dart';

class Profile extends StatelessWidget {
  final String name;
  const Profile({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome $name')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // GoRouter.of(context).go('/');
            // context.go('/');
            

            //For named route
            context.goNamed(RouteNames.dashboard);
          },
          child: Text('Dashboard'),
        ),
      ),
    );
  }
}
