import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/FormSurvey/FormSurvey.dart';
import 'package:flutter_application_1/screens/Login/LoginCoba.dart';
import 'package:flutter_application_1/screens/Register/Register.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:expandable_text/expandable_text.dart';

class Program extends StatefulWidget {
  const Program({Key? key}) : super(key: key);

  @override
  State<Program> createState() => _ProgramState();
}

double collapsableHeight = 0.0;
Color selected = Color(0xFFfffffff);
Color notSelected = Color(0xafffffff);

class _ProgramState extends State<Program> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 1.0),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              height: 80.0,
              decoration: BoxDecoration(
                color: Color(0xff121212),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.0, vertical: 19.3),
                    height: 70.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Healty One',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   // programdokteroCB (12:81)
                  //   margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  //   constraints: BoxConstraints(
                  //     maxWidth: 105,
                  //   ),
                  //   child: Text(
                  //     'Program Dokter',
                  //     textAlign: TextAlign.center,
                  //     style: GoogleFonts.inter(
                  //       fontSize: 25,
                  //       fontWeight: FontWeight.w700,
                  //       height: 1.2125,
                  //       color: Color(0xff000000),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            // Container(
            //   margin: EdgeInsets.fromLTRB(450, 100, 568, 20),
            //   width: double.infinity,
            //   height: 456,
            //   child: Stack(
            //     children: [
            //       Positioned(
            //         left: 212,
            //         child: Align(
            //           child: SizedBox(
            //             width: 519,
            //             height: 298,
            //             child: Container(
            //               decoration: BoxDecoration(
            //                 color: Color(0xffd9d9d9),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0.5, 0, 0),
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      width: 300.0,
                      height: 300.0,
                      child: Image.asset('assets/images/HealtyOne.png'),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 500, 0),
                    child: Text(
                      'Deskripsi Program',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                      padding: const EdgeInsets.fromLTRB(450, 0, 450, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(children: [
                              WidgetSpan(
                                child: const ExpandableText(
                                  "This restaurant has nice vibe and delicious food. The service at this restaurant is nice. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                  expandText: "Showmore",
                                  collapseText: 'show less',
                                  maxLines: 8,
                                  linkColor: Colors.grey,
                                  style: const TextStyle(fontSize: 15),
                                ),
                              )
                            ]),
                          ),
                        ],
                      )),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 500, 0),
                    width: double.infinity,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(500, 10, 0, 0),
                          width: 650,
                          height: double.infinity,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {},
                            child: Text(
                              "Question",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                          width: 150,
                          height: double.infinity,
                          child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {},
                            child: Text(
                              "Konsultasi",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                    width: 250,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Colors.red,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28))),
                            onPressed: () {},
                            child: Text(
                              "Result",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [

            //     ],
            //   ),
            // ),
            // Container(
            //   margin: EdgeInsets.fromLTRB(481, 0, 623, 0),
            //   width: double.infinity,
            //   height: 50,
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       Container(
            //         // autogroupyzcpDod (Cck5cVftHT6AS3VtocYzcP)
            //         margin: EdgeInsets.fromLTRB(0, 0, 106, 0),
            //         width: 314,
            //         height: double.infinity,
            //         decoration: BoxDecoration(
            //           color: Color(0xfffa4646),
            //           borderRadius: BorderRadius.circular(15),
            //         ),
            //         child: Center(
            //           child: Text(
            //             'Question',
            //             style: GoogleFonts.inter(
            //               fontSize: 22,
            //               fontWeight: FontWeight.w400,
            //               height: 1.2125,
            //               color: Color(0xffffffff),
            //             ),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         // autogrouplzqbW23 (Cck5fk5UMM5na9N7oqLZQb)
            //         width: 314,
            //         height: double.infinity,
            //         decoration: BoxDecoration(
            //           color: Color(0xfffa4646),
            //           borderRadius: BorderRadius.circular(15),
            //         ),
            //         child: Center(
            //           child: Text(
            //             'Konsultasi',
            //             style: GoogleFonts.inter(
            //               fontSize: 22,
            //               fontWeight: FontWeight.w400,
            //               height: 1.2125,
            //               color: Color(0xffffffff),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
