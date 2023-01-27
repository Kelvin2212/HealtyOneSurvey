// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/FormSurvey/FormSurvey.dart';
// import 'package:flutter_application_1/screens/Login/LoginCoba.dart';
// import 'package:flutter_application_1/screens/Register/Register.dart';

// class ProgramDokter extends StatefulWidget {
//   const ProgramDokter({Key? key}) : super(key: key);

//   @override
//   State<ProgramDokter> createState() => _ProgramDokterState();
// }

// double collapsableHeight = 0.0;
// Color selected = Color(0xFFfffffff);
// Color notSelected = Color(0xafffffff);

// class _ProgramDokterState extends State<ProgramDokter> {
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     return Container(
//       child: Scaffold(
//           body: Stack(
//         children: [
//           AnimatedContainer(
//             margin: EdgeInsets.only(top: 79.0),
//             duration: Duration(milliseconds: 375),
//             curve: Curves.ease,
//             height: (width < 800.0) ? collapsableHeight : 0.0,
//             width: double.infinity,
//             color: Color(0xff121212),
//             child: SingleChildScrollView(),
//           ),
//           Container(
//             color: Color(0xff121212),
//             height: 80.0,
//             padding: EdgeInsets.symmetric(horizontal: 24.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Healty One',
//                   style: TextStyle(
//                     fontSize: 22.0,
//                     color: Color(0xffffffff),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       )),
//     );
//   }
// }

// // List<Widget> navBarItems = [
// //   NavBarItem(
// //     text: 'Survey',
// //     onTap: () {
// //       Navigator.push(
// //           context, MaterialPageRoute(builder: (context) => LoginScreen()));
// //     },
// //   ),
// // NavBarItem(text: 'Login', onTap: () {}),
// // NavBarItem(
// //   text: 'Search',
// //   context: context,
// //   onTap: () {
// //     Navigator.push(
// //         context, MaterialPageRoute(builder: (context) => SearchPage()));
// //   },
// // ),
// // NavBarItem(
// //   text: 'Help',
// //   context: context,
// //   onTap: () {
// //     Navigator.push(
// //         context, MaterialPageRoute(builder: (context) => HelpPage()));
// //   },
// // ),
// // ];

// class NavBarItem extends StatefulWidget {
//   final String text;
//   final void Function() onTap;

//   NavBarItem({
//     required this.text,
//     required this.onTap,
//   });

//   @override
//   _NavBarItemState createState() => _NavBarItemState();
// }

// class _NavBarItemState extends State<NavBarItem> {
//   Color color = notSelected;
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           splashColor: Colors.white60,
//           onTap: widget.onTap,
//           child: Container(
//             height: 100.0,
//             alignment: Alignment.centerLeft,
//             margin: EdgeInsets.symmetric(horizontal: 24.0),
//             child: Text(
//               widget.text,
//               style: TextStyle(
//                 fontSize: 16.0,
//                 color: color,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ImageProgram extends StatefulWidget {
//   const ImageProgram({Key? key}) : super(key: key);

//   @override
//   State<ImageProgram> createState() => _ImageProgramState();
// }

// class _ImageProgramState extends State<ImageProgram> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//       padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10.0),
//             child: Container(
//               padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
//               width: 300.0,
//               height: 300.0,
//               child: Image.asset('assets/images/HealtyOne.png'),
//             ),
//           )
//         ],
//       ),
//       // child: Image.asset('assets/images/HealtyOne.png'),
//     );
//   }
// }
