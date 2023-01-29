import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/DokterPages/menudokter.dart';




class Expansionpanel extends StatefulWidget {
  Expansionpaneltate createState() =>  Expansionpaneltate();
}
class NewItem {
  bool isExpanded;
  final Widget header;
  final Widget body;
  final Icon iconpic;
  NewItem(this.isExpanded, this.header, this.body, this.iconpic);
}
class Expansionpaneltate extends State<Expansionpanel> {
  List<NewItem> items = <NewItem>[
    NewItem(
      false, // isExpanded ?
      Dokter(), // header
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Text('data'),
            Text('data'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
            Radio(value: null, groupValue: null, onChanged: null)
          ]
        )
      ), // body
      Icon(Icons.image) // iconPic
    ),
  ];
late Container List_Criteria;
Widget build(BuildContext context) {
    List_Criteria = Container(
    
         child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                items[index].isExpanded = !items[index].isExpanded;
              });
            },
            children: items.map((NewItem item) {
              return ExpansionPanel(
                backgroundColor:  Color.fromARGB(255, 223, 223, 223),
                canTapOnHeader: true,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return  Column(
                    children: const [
                      Dokter(),
                    ]
                    
                  );
                },
                isExpanded: item.isExpanded,
                body: Column(children: [
                  DaftarProgram(), SizedBox(height: 20,),DaftarProgram(),SizedBox(height: 20,)
                ]),
              );
            }).toList(),
          ),
        ),
    );
    // Scaffold scaffold =  Scaffold(
    //   appBar:  AppBar(
    //     title:  Text("ExpansionPanelList"),
    //   ),
    //   body: List_Criteria,
    // );
    return List_Criteria;
  }
}

class contoh extends StatelessWidget {
  const contoh({super.key});

  @override
  Widget build(BuildContext context) {
    return Expansionpanel();
  }
}