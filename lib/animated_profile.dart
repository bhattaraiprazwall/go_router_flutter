import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_flutter/route_names.dart';

class AnimatedProfile extends StatelessWidget {
  const AnimatedProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome Prajwal')),
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
