import 'package:flutter/material.dart';
import 'package:flutter_application_1/Home/HomePage.dart';
import 'package:flutter_application_1/screens/DokterPages/belajar_collapse.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';

class DokterPages
 extends StatelessWidget {
  const DokterPages
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(right: 200, left: 200),
        children: [
          BreadCrumbDokter(),
          const SizedBox(
            height: 50,
          ),
          const Text("Daftar Dokter",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          ),
          Container(
            padding: EdgeInsets.only(top: 80),
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 1,
              child: Container(
                color: Color.fromARGB(255, 115, 115, 115),
        height: 500
              ),
              ),
              Expanded(flex: 3,
              child: contoh()
              )
            ],
          ),
          )
          

        ],
      )
    );
  }
}

class FilterDokter extends StatelessWidget {
  const FilterDokter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: Container(
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[300]
            ),
            )
            )
        ],
      ),
    );
  }
}

class DaftarDokter extends StatelessWidget {
  const DaftarDokter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: contoh(),
    );
  }
}

class BreadCrumbDokter extends StatelessWidget {
  const BreadCrumbDokter({super.key});

  @override
  Widget build(BuildContext context) {
    return  BreadCrumb(
            items: <BreadCrumbItem> [
		 BreadCrumbItem(content: 
     InkWell(
      child: Text('Menu'),
      onTap: (){
      Navigator.push(
                  context,MaterialPageRoute(builder: (context) => HomePage()),
                  );
     }
     )
    
     )
     ,
		 BreadCrumbItem(content: Text('Daftar Dokter')),
     ],
        divider: Icon(Icons.chevron_right),
          );
  }
}