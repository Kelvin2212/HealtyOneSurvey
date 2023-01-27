// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/domain/user.dart';
// import 'package:flutter_application_1/providers/user_provider.dart';
// import 'package:flutter_application_1/Utility/shared_preference.dart';
// import 'package:provider/provider.dart';

// class DashBoard extends StatefulWidget {
//   @override
//   _DashBoardState createState() => _DashBoardState();
// }

// class _DashBoardState extends State<DashBoard> {
//   @override
//   Widget build(BuildContext context) {
//     User user = Provider.of<UserProvider>(context).user;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("DASHBOARD PAGE"),
//         elevation: 0.1,
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 100,
//           ),
//           Center(child: Text('${user.email}')),
//           SizedBox(height: 100),
//           ElevatedButton(
//             onPressed: () {
//               UserPreferences().removeUser();
//               Navigator.pushReplacementNamed(context, '/login');
//             },
//             child: Text("Logout"),
//           )
//         ],
//       ),
//     );
//   }
// }
