import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ProgramDokter/Program.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

double collapsableHeight = 0.0;
Color selected = Color(0xFFffffff);
Color notSeleceted = Color(0xafffffff);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 19.4),
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
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 50.0),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Beranda",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 50.0),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Artikel",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 50.0),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Aplikasi",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 50.0),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Riwayat",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        'Home Page',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(40, 30, 0, 0),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Solusi Kesehatan Terlengkap',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Chat dokter, kunjungi rumah sakit, beli obat, cek lab dan update informasi seputar kesehatan, semua bisa di Healty One!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(35, 0, 10, 0),
                child: Row(
                  children: [
                    Container(
                      child: Card(
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.lightBlueAccent,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        width: 100.0,
                                        height: 100.0,
                                        child: Image.asset(
                                            'assets/images/HealtyOne.png'))),
                                const Text(
                                  'Chat Dengan\n     Dokter',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Card(
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.lightBlueAccent,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        width: 100.0,
                                        height: 100.0,
                                        child: Image.asset(
                                            'assets/images/HealtyOne.png'))),
                                const Text(
                                  '      Toko\n Kesehatan',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Card(
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.lightBlueAccent,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        width: 100.0,
                                        height: 100.0,
                                        child: Image.asset(
                                            'assets/images/HealtyOne.png'))),
                                const Text(
                                  'Janji Dengan\n      Dokter',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(500, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ClipRRect(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              width: 450.0,
                              height: 250.0,
                              child: Image.asset(
                                'assets/images/HealtyOne.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                    width: 430.0,
                    height: 80.0,
                    child: Card(
                      color: Colors.grey[300],
                      elevation: 15,
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.lightBlueAccent,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text(
                                'Show Programs',
                                style: TextStyle(fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 45),
                width: double.infinity,
                child: Text(
                  'My Programs',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    height: 1.2175,
                    color: Color(0xff000000),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(80, 20, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      elevation: 15,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.lightBlueAccent,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      width: 650.0,
                                      height: 300.0,
                                      child: Image.asset(
                                        'assets/images/HealtyOne.png',
                                        fit: BoxFit.cover,
                                      ))),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                      child: Card(
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: InkWell(
                          onTap: () {},
                          splashColor: Colors.lightBlueAccent,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        width: 650.0,
                                        height: 300.0,
                                        child: Image.asset(
                                          'assets/images/HealtyOne.png',
                                          fit: BoxFit.cover,
                                        ))),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
