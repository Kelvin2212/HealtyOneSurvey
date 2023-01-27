import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/screens/FormSurvey/FormSurvey.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstMenu extends StatelessWidget {
  const FirstMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: InkWell(
            splashColor: Color.fromARGB(255, 0, 0, 0).withAlpha(30),
            highlightColor: Color.fromARGB(255, 0, 0, 0),
            onTap: () {
              // Navigator.push(
              //   context,MaterialPageRoute(builder: (context) => ),
              //   );
            },
            child: Container(
                height: double.infinity,
                color: Color.fromARGB(255, 196, 196, 196),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Show\nProgram',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 50,
                      ),
                    ),
                  ],
                )
                // child: Text(
                //   'Show\nProgram'
                // ),
                ),
          )),
          Expanded(
              child: InkWell(
            splashColor: Color.fromARGB(255, 0, 0, 0).withAlpha(30),
            highlightColor: Color.fromARGB(255, 0, 0, 0),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SurveyPage()),
              );
            },
            child: Container(
                height: double.infinity,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Start Your\nHealthy Lifestyle\nJourney',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 50,
                      ),
                    ),
                  ],
                )),
          )),
        ],
      ),
    );
  }
}
