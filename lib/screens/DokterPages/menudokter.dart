import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/screens/ProgramDokter/Program.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:tes/screen/expaded.dart';

// class Daftra_doctor extends StatelessWidget {
//   const Daftra_doctor({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: DaftarProgram(),
//     );
//   }
// }

class Dokter extends StatelessWidget {
  const Dokter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                          height: 150,
                          margin: EdgeInsets.all(15),
                          decoration: const ShapeDecoration(
                             shape: CircleBorder(),
                             color: Color.fromARGB(255, 141, 141, 141)
                          ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 30, top: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: const Text(
                                'dr. Peguh Suhanto',
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                            ),
                            // Container(
                            //   margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            //   child: const Text(
                            //     'dokter umum',
                            //      style: TextStyle(
                            //       fontSize: 18,
                            //       fontWeight: FontWeight.w400
                            //     ),
                            //   ),
                            // )
                      ]
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(color: Color.fromARGB(255, 71, 71, 71))
                              ),
                              
                                child:   Text(
                                'Diabetes'
                              ),
                            ),
                            Container(
                          padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(color: Color.fromARGB(255, 71, 71, 71))
                              ),
                              
                                child:   Text(
                                'Obesitas'
                              ),
                            )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 10),
                              child: Text('universitas '),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 10),
                              child: Text('Pengalaman'),
                            ),
                            Container(
                              child: Text('Lokasi '),
                            )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ulasan Dokter",
                        style: TextStyle(
                          fontSize: 18,
                        ),),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.thumb_up_alt,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 18,
                              ),
                              Text("100% (120)",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black54,

                    ),
                    child: Text("Show Program",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DaftarProgram extends StatelessWidget {
  const DaftarProgram({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 237, 237, 237),
      ),
      margin: EdgeInsets.only(right: 20, left: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.only(left: 20),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                                'Diabetes',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                    ),
                    Container(
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam porttitor consequat mi at vulputate. Interdum et malesuada fames ac ante ipsum primis in faucibus."),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child:   Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.thumb_up_alt,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 18,
                              ),
                              Text("100% (120)",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal
                              ),)
                            ],
                          ),
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("200 Pasien telah mengikuti program"),
                    )
                  ],

                ),
              )
            ],
           ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(right: 20),
              width: 50,
              child: ElevatedButton(
              onPressed: () {
                  Navigator.push(
                  context,MaterialPageRoute(builder: (context) => Program()),
                  );
              },
              child: Text("Detail Program"),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 113, 113, 113),
                padding: EdgeInsets.all(5),
                 textStyle: TextStyle(
                fontSize: 18,
                // background: Colors.black
              ),
  ),
              ),
            ) 
          ),
          
        ],
      ),
    );
  }
}
