// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:go_router_flutter/route_names.dart';

// class Dashboard extends StatelessWidget {
//   const Dashboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DashBoard', style: TextStyle(color: Colors.green)),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             // GoRouter.of(context).go('/profile');
//             String name = 'Prajwal';
//             // context.go('/profile/$name');

//             //for named routes
//             // context.goNamed(RouteNames.profile,pathParameters: {"name":"Prajwal"});

//             // queryparams
//             context.goNamed(
//               RouteNames.profile,
//               queryParameters: {'name': 'Prajwal'},
//             );
//           },
//           child: Text('Profile'),
//         ),
//       ),
//     );
//   }
// }

//for go router redirect feature
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dashboard Page')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.goNamed('animated_profile');
          },
          child: Text('Animated Profile'),
        ),
      ),
    );
  }
}
