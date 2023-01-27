import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/HomePage.dart';
import 'package:flutter_application_1/screens/FormSurvey/FormSurvey.dart';
import 'package:flutter_application_1/screens/Login/LoginBener.dart';
import 'package:flutter_application_1/screens/Login/LoginCoba.dart';
import 'package:flutter_application_1/screens/ProgramDokter/Program.dart';
import 'package:flutter_application_1/screens/ProgramDokter/ProgramDokter.dart';
import 'package:flutter_application_1/screens/Register/Register.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
    debugShowCheckedModeBanner: false,
  ));
}

double collapsableHeight = 0.0;
Color selected = Color(0xFFfffffff);
Color notSelected = Color(0xafffffff);

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    List<Widget> navBarItems = [
      NavBarItem(
        text: 'Survey',
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SurveyPage()));
        },
      ),
      NavBarItem(
        text: 'Login',
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
      ),
      NavBarItem(
        text: 'Register',
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RegisterScreen()));
        },
      ),
      NavBarItem(
        text: 'Program Dokter',
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Program()));
        },
      ),
      NavBarItem(
        text: 'HomePage',
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
      ),
    ];
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        AnimatedContainer(
          margin: EdgeInsets.only(top: 79.0),
          duration: Duration(milliseconds: 375),
          curve: Curves.ease,
          height: (width < 800.0) ? collapsableHeight : 0.0,
          width: double.infinity,
          // color: Color(0xff121212),
          child: SingleChildScrollView(
            child: Column(
              children: navBarItems,
            ),
          ),
        ),
        Container(
          color: Color(0xff121212),
          height: 80.0,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Healty One',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Color(0xffffffff),
                ),
              ),
              LayoutBuilder(
                builder: (context, contraints) {
                  if (width < 800.0) {
                    return NavBarButton(
                      onPressed: () {
                        if (collapsableHeight == 0.0) {
                          setState(() {
                            collapsableHeight = 240.0;
                          });
                        } else if (collapsableHeight == 24.0) {
                          setState(() {
                            collapsableHeight = 0.0;
                          });
                        }
                      },
                    );
                  } else {
                    return Row(
                      children: navBarItems,
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

// List<Widget> navBarItems = [
//   NavBarItem(
//     text: 'Survey',
//     onTap: () {
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => LoginScreen()));
//     },
//   ),
// NavBarItem(text: 'Login', onTap: () {}),
// NavBarItem(
//   text: 'Search',
//   context: context,
//   onTap: () {
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => SearchPage()));
//   },
// ),
// NavBarItem(
//   text: 'Help',
//   context: context,
//   onTap: () {
//     Navigator.push(
//         context, MaterialPageRoute(builder: (context) => HelpPage()));
//   },
// ),
// ];

class NavBarItem extends StatefulWidget {
  final String text;
  final void Function() onTap;

  NavBarItem({
    required this.text,
    required this.onTap,
  });

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: widget.onTap,
          child: Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 16.0,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarButton extends StatefulWidget {
  final VoidCallback onPressed;

  NavBarButton({
    required this.onPressed,
  });

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: 55.0,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffffffff), width: 2.0),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            setState(() {
              widget.onPressed();
            });
          },
          child: Icon(
            Icons.menu,
            size: 30.0,
            color: Color(0xcffffffff),
          ),
        ),
      ),
    );
  }
}

// class Button extends StatelessWidget {
//   final VoidCallback onPress;
//   final double width;
//   final double height;

//   Button({required this.onPress, required this.width, required this.height});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: width,
//       height: height,
//       child: InkWell(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text("Button"),
//           ],
//         ),
//         onTap: onPress,
//       ),
//     );
//   }
// }
