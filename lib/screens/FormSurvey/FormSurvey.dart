import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/login_model.dart';
import 'package:flutter_application_1/screens/FormSurvey/Question.dart';
import 'package:flutter_application_1/screens/FormSurvey/QuestionOption.dart';
import 'package:flutter_application_1/screens/Login/Login.dart';
import 'package:line_icons/line_icons.dart';
import 'package:tuple/tuple.dart';
import 'package:number_paginator/number_paginator.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

class SurveyPage extends StatefulWidget {
  const SurveyPage({super.key});

  @override
  State<SurveyPage> createState() => _SurveyPageState();
}

// class Struct {
//   String pertanyaan;
//   String type;
//   List<String> choice;
//   Struct({required this.pertanyaan, required this.type, required this.choice});
// }

class _SurveyPageState extends State<SurveyPage> {
  // final List<Question> _question = [];
  // // List<QuestionOption> _questionoption = [];
  // String? token =
  //     'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDE4NDM4MSwianRpIjoiNmYxYmY5NWZhYWNmNDUzYTgzNWMyMzFjZWQ0MTBhNmEiLCJ1c2VyX2lkIjozNTIsInVzZXJuYW1lIjoiaG9uZ2kiLCJnbWFpbCI6ImhvbmdpLnB1dHJhMTFAZ21haWwuY29tIiwiaWQiOjM1MiwiY3NyZiI6Ik91NkpRTXc2dHRxNndtendDRmJWYWhBdFJEOWVJVWMyUld1c0tKelNFdU0xYklSbG1KZGxWWndxeXpwVHIyNE8iLCJ1c2VyX2FnZW50IjoiTW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzEwOC4wLjAuMCBTYWZhcmkvNTM3LjM2IEVkZy8xMDguMC4xNDYyLjc2IiwiZ3JvdXBzIjpbXSwiaGdyb3VwcyI6W119.KHIwP44ZPKTj0koB5EYzxTBsYSWzdEZFItwERVfDFai-xoyfelhCWo1628Ce0iYnZm9X-q45dHLFOaveLM33tjzdzzd8TRyWrKWpQ7FTXVFng2W9TJXiOa3mbGdieCCJN1DLxwxpe_dWNRqJSSzKPwelgDp2X-q2-tRnTu-_V45SK_zbrOvgIuObZ_X1gBK7Jdt57yOH37zjwnMYedVpeErFth0HD2y39MP_9uC3qGf5PBFBQAFHjGalR-sk77bmLb1B8UecqLsQcyN7Sj65FN_E0oXgD_2VYXEHFcWHRUVkAWVwrEAo7HyaiewKHPJ7XGcut-COebxW0wPDNqsR-g';

  // Future<Map<String, dynamic>> getData1(String id, String token) async {
  //   final response = await http.get(
  //     'https://staging-izmo.chc.pharmalink.id/healthyone-survey/api/survey/question/$id',
  //     headers: {'Authorization': 'Bearer $token'},
  //   );
  //   return json.decode(response.body);
  // }

  // Future<Map<String, dynamic>> getData2(String id, String token) async {
  //   final response = await http.get(
  //     'https://staging-izmo.chc.pharmalink.id/healthyone-survey/api/survey/question-option/$id',
  //     headers: {'Authorization': 'Bearer $token'},
  //   );
  //   return json.decode(response.body);
  // }

  // Future<Map<String, dynamic>> combineData(String id, String token) async {
  //   Map<String, dynamic> data1 = await getData1(id, token);
  //   Map<String, dynamic> data2 = await getData2(id, token);
  //   data1.addAll(data2);
  //   return data1;
  // }
  // Future<List<Question>> fetchJson() async {
  //   List<Question> ulist1 = [];

  //   var url1 =
  //       'https://staging-izmo.chc.pharmalink.id/healthyone-survey/api/survey/question';

  //   var response1 =
  //       await http.get(Uri.parse(url1), headers: {'Authorization': '$token'});

  //   if (response1.statusCode == 200) {
  //     var ujson = json.decode(response1.body)['data'];
  //     print(ujson.toString());

  //     for (var jsonData in ujson) {
  //       ulist1.add(Question.fromJson(jsonData));
  //     }

  //     print("success");
  //   } else if (response1.statusCode == 401) {
  //     print('Request failed');
  //   }

  //   return ulist1;
  // }

  // Future<List<QuestionOption>> fetchJson2() async {
  //   List<QuestionOption> ulist2 = [];
  //   var url2 =
  //       'https://staging-izmo.chc.pharmalink.id/healthyone-survey/api/survey/question-option';

  //   var response =
  //       await http.get(Uri.parse(url2), headers: {'Authorization': '$token'});

  //   if (response.statusCode == 200) {
  //     var ujson = json.decode(response.body)['data'];
  //     print(ujson.toString());

  //     for (var jsonData in ujson) {
  //       ulist2.add(QuestionOption.fromJson(jsonData));
  //     }

  //     print("success");
  //   } else if (response.statusCode == 401) {
  //     print('Request failed');
  //   }

  //   return ulist2;
  // }

  // @override
  // void initState1() {
  //   fetchJson().then((value) {
  //     setState(() {
  //       _question.addAll(value);
  //       _selectedRadio = 0;
  //     });
  //   });
  //   // fetchJson().then((value) {
  //   //   setState(() {
  //   //     _question.addAll(value);
  //   //   });
  //   // });
  //   super.initState();
  // }

  // void initState2() {
  //   fetchJson2().then((value) {
  //     setState(() {
  //       _questionoption.addAll(value);
  //     });
  //   });
  //   super.initState();
  // }

  // TextEditingController form = TextEditingController();

  // // String selectedChoice = '';
  // // List<String> _valuesChek = [];
  // // List<List<String>> _value = [];

  // void _onSelected(bool selected, String dataName) {
  //   if (selected == true) {
  //     setState(() {
  //       _valuesChek.add(dataName);
  //     });
  //   } else {
  //     setState(() {
  //       _valuesChek.remove;
  //     });
  //   }
  // }

  // void _RadioSel(String choice) {
  //   selectedChoice = choice;
  // }

  // Struct(pertanyaan: , type: type, choice: choice)
  // Text(_question[index].id.toString()),
  // Struct(
  //     pertanyaan: "apakah kamu hamil",
  //     type: "Checkbox",
  //     choice: ["ya", "tidak"]),
  // Struct(pertanyaan: "seberapa parah rasa mualmu", type: "Radio", choice: [
  //   "tidak terlalu mual",
  //   "cukup mual",
  //   "mual",
  //   "sangat mual",
  // ]),
  // Struct(
  //     pertanyaan: "seberapa sering intensitas mual anda",
  //     type: "Radio",
  //     choice: [
  //       "tidak pernah",
  //       "pernah",
  //       "sesekali",
  //       "sering",
  //       "cukup sering",
  //       "sangat sering"
  //     ]),
  // Struct(
  //     pertanyaan: "sebutkan keluhanmu",
  //     type: "Form",
  //     choice: ["sebutkan keluhanmu"]),
  // Struct(
  //     pertanyaan: "apa saja alergi yang kamu miliki",
  //     type: "Checkbox",
  //     choice: ["kacang", "gluten", "dairy", "debu", "bulu hewan", "seafood"]),

  // int index = 0;

  // // int index2 = 0;

  // int _selectedRadio = 0;

  // setSelectedRadio(int val) {
  //   setState(() {
  //     _selectedRadio = val;
  //   });
  // }

  // bool _isChecked = false;

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: Container(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       children: [
  //         Form(BuildContext, _question[index].question.toString(),
  //             // point2[index].type, point2[index].choice
  //             ),
  //         TextButton(
  //             onPressed: () {
  //               if (index < point2.length) {
  //                 setState(() {
  //                   if (point2[index].type == "Checkbox") {
  //                     _value.add(_valuesChek);
  //                   } else if (point2[index].type == "Radio") {
  //                     // if (selectedChoice == '') {
  //                     //   _value.add(selectedChoice);
  //                     // }
  //                     _value.add([selectedChoice]);
  //                   } else {
  //                     _value.add([form.text]);
  //                   }
  //                   index++;
  //                   if (index == point2.length) {
  //                     index = 0;
  //                     String tm = point2[index].type;
  //                     print(tm);
  //                   }
  //                   //}
  //                 });
  //               }
  //             },
  //             child: Icon(LineIcons.arrowRight)),
  //     //     TextButton(
  //     //         onPressed: () {
  //     //           if (index < _question.length - 1) {
  //     //             setState(() {

  //     //               index++;
  //     //               // String object = point2.[].;
  //     //               // print(object);
  //     //               // for (var q = 0; q < _value.length; q++) {
  //     //               // print("aaaa,${_value[1]}");
  //     //               // }
  //     //             });
  //     //           }
  //     //         },
  //     //         child: Text("show ans"))
  //        ],
  //      ),
  //     // Expanded(
  //     //   child: Container(
  //     //     child: pages[currentPage],
  //     //   ),
  //     // ),
  //     // NumberPaginator(
  //     //   numberPages: numberOfPages,
  //     //   onPageChange: (index) {
  //     //     setState(() {
  //     //       currentPage = index;
  //     //     });
  //     //   },
  //     // ),
  //   ));
  // }

  // Future addvalue() async {
  //   _value.add(await _valuesChek);
  // }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: Container(
  //           child: Column(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: [
  //       Form(BuildContext, _question[index].question.toString()),
  //       TextButton(
  //           onPressed: () {
  //             if (index < _question.length - 1) {
  //               setState(() {
  //                 index++;
  //               });
  //             } else {
  //               setState(() {
  //                 index = 0;
  //               });
  //             }
  //           },
  //           child: Icon(LineIcons.arrowRight))
  //     ],
  //   )));
  // }

  // Widget Form(BuildContext, String quest) {
  //   return Center(
  //       child: Column(children: [
  //     Text(quest),

  //     // Column(
  //     //   children: [
  //     //     ListView.builder(
  //     //         itemCount: choice.length,
  //     //         shrinkWrap: true,
  //     //         physics: NeverScrollableScrollPhysics(),
  //     //         itemBuilder: (BuildContext context, int index) {
  //     //           return radio(context, index, isRadio, choice);
  //     //         }),
  //     //   ],
  //     // ),
  //   ]));
  // }

  // @override
  // Widget radio(
  //     BuildContext context, int index, String isRadio, List<String> choice) {
  //   if (isRadio == "Checkbox")
  //     return Column(children: [
  //       CheckboxListTile(
  //         value: _valuesChek.contains(choice[index]),
  //         onChanged: (val) {
  //           if (_valuesChek.isEmpty == true ||
  //               _valuesChek.length <= choice.length) {
  //             _onSelected(val!, choice[index]);
  //           } else {
  //             _valuesChek.clear();
  //           }
  //         },
  //         title: Text(choice[index]),
  //       ),
  //     ]);
  // if (isRadio == "Radio")
  //   return Column(
  //     children: <Widget>[
  //       Radio(
  //         value: index,
  //         groupValue: _selectedRadio,
  //         onChanged: (val) {
  //           setSelectedRadio(val!);
  //           _RadioSel(choice[index]);
  //         },
  //       ),
  //       Text(choice[index])
  //     ],
  //   );
  // else
  // return TextField(
  //   controller: form,
  //   // controller: emailController,
  //   keyboardType: TextInputType.emailAddress,
  //   style: const TextStyle(
  //     color: Colors.black,
  //   ),
  //   decoration: InputDecoration(
  //     filled: true,
  //     // ignore: prefer_const_constructors
  //     prefixIcon: Icon(
  //       LineIcons.envelope,
  //       color: Colors.grey,
  //     ),
  //     fillColor: Colors.grey.shade300,
  //     focusedBorder: OutlineInputBorder(
  //         borderSide: const BorderSide(
  //           color: Colors.green,
  //         ),
  //         borderRadius: BorderRadius.circular(10.0)),
  //     enabledBorder: OutlineInputBorder(
  //         borderSide: const BorderSide(
  //           color: Colors.white60,
  //         ),
  //         borderRadius: BorderRadius.circular(10.0)),
  //     contentPadding: const EdgeInsets.only(top: 14.0, left: 20.0),
  //     hintText: choice[index],
  //   ),
  // );

  TextEditingController form = TextEditingController();
  TextEditingController id = TextEditingController();

  String selectedChoice = '';
  late int RadioId;

  List<String> _valuesCheck = [];
  List<List> _value = [];
  List idCheck = [];
  List<List> idOption = [];

  void _onSelected(bool selected, String dataName, int id) {
    if (selected == true) {
      setState(() {
        _valuesCheck.add(dataName);
        idCheck.add(id);
      });
    } else {
      setState(() {
        _valuesCheck.remove;
        idCheck.remove;
      });
    }
  }

  void _RadioSel(String choice, int id) {
    selectedChoice = choice;
    RadioId = id;
  }

  int index = 60;

  int _selectedRadio = 0;

  setSelectedRadio(int val) {
    setState(() {
      _selectedRadio = val;
    });
  }

  bool _isChecked = false;

  List<Question> _question = [];
  List<QuestionOption> _questionoption = [];
  String? token =
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY3NDE4NDM4MSwianRpIjoiNmYxYmY5NWZhYWNmNDUzYTgzNWMyMzFjZWQ0MTBhNmEiLCJ1c2VyX2lkIjozNTIsInVzZXJuYW1lIjoiaG9uZ2kiLCJnbWFpbCI6ImhvbmdpLnB1dHJhMTFAZ21haWwuY29tIiwiaWQiOjM1MiwiY3NyZiI6Ik91NkpRTXc2dHRxNndtendDRmJWYWhBdFJEOWVJVWMyUld1c0tKelNFdU0xYklSbG1KZGxWWndxeXpwVHIyNE8iLCJ1c2VyX2FnZW50IjoiTW96aWxsYS81LjAgKFdpbmRvd3MgTlQgMTAuMDsgV2luNjQ7IHg2NCkgQXBwbGVXZWJLaXQvNTM3LjM2IChLSFRNTCwgbGlrZSBHZWNrbykgQ2hyb21lLzEwOC4wLjAuMCBTYWZhcmkvNTM3LjM2IEVkZy8xMDguMC4xNDYyLjc2IiwiZ3JvdXBzIjpbXSwiaGdyb3VwcyI6W119.KHIwP44ZPKTj0koB5EYzxTBsYSWzdEZFItwERVfDFai-xoyfelhCWo1628Ce0iYnZm9X-q45dHLFOaveLM33tjzdzzd8TRyWrKWpQ7FTXVFng2W9TJXiOa3mbGdieCCJN1DLxwxpe_dWNRqJSSzKPwelgDp2X-q2-tRnTu-_V45SK_zbrOvgIuObZ_X1gBK7Jdt57yOH37zjwnMYedVpeErFth0HD2y39MP_9uC3qGf5PBFBQAFHjGalR-sk77bmLb1B8UecqLsQcyN7Sj65FN_E0oXgD_2VYXEHFcWHRUVkAWVwrEAo7HyaiewKHPJ7XGcut-COebxW0wPDNqsR-g';

  Future<List<Question>> fetchJson1() async {
    List<Question> ulist1 = [];

    var url1 =
        'https://staging-izmo.chc.pharmalink.id/healthyone-survey/api/survey/get-question?survey=supplement';

    var response1 = await http.get(
      Uri.parse(url1),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response1.statusCode == 200) {
      var ujson = json.decode(response1.body)['data'];
      print(ujson.toString());

      for (var jsonData in ujson) {
        ulist1.add(Question.fromJson(jsonData));
      }

      print("success");
    } else if (response1.statusCode == 401) {
      print('Request failed');
    }

    return ulist1;
  }

  Future<List<QuestionOption>> fetchJson2() async {
    List<QuestionOption> ulist2 = [];

    var url2 =
        'https://staging-izmo.chc.pharmalink.id/healthyone-survey/api/survey/get-question-option';

    var response2 = await http.get(
      Uri.parse(url2),
      headers: {'Authorization': 'Bearer $token'},
    );
    if (response2.statusCode == 200) {
      var ujson = json.decode(response2.body)['data'];
      print(ujson.toString());

      for (var jsonData in ujson) {
        ulist2.add(QuestionOption.fromJson(jsonData));
      }

      print("success");
    } else if (response2.statusCode == 401) {
      print('Request failed');
    }

    return ulist2;
  }

  Future<List<QuestionOption>> fetchJson3() async {
    List<QuestionOption> ulist3 = [];

    var url3 =
        'https://staging-izmo.chc.pharmalink.id/healthyone-survey/api/survey/get-consultant-slot';

    var response3 = await http.get(
      Uri.parse(url3),
      // headers: {'Authorization': 'Bearer $token'},
    );
    if (response3.statusCode == 200) {
      var ujson = json.decode(response3.body)['data'];
      print(ujson.toString());

      for (var jsonData in ujson) {
        ulist3.add(QuestionOption.fromJson(jsonData));
      }

      print("success");
    } else if (response3.statusCode == 401) {
      print('Request failed');
    }

    return ulist3;
  }

  Future<List<dynamic>> matchDataByID(int id, int questionId) async {
    var response1 = await fetchJson1();
    var response2 = await fetchJson2();
    var matchedData = [];
    for (var _question in response1) {
      if (_question.id == id) {
        matchedData.add(_question);
        for (var _questionoption in response2) {
          if (_question.id == _questionoption.questionId &&
              _question.id == id) {
            matchedData.add(_question);
            matchedData.add(_questionoption);
          }
        }
        break;
      }
    }
    return matchedData;
  }

  @override
  String jsonString = '';

  void attachJson(List<List> data) async {
    print('');

    List<String> jsonArr = [];

    for (var i = 0; i < _value.length; i++) {
      var jsonMap = {};
      jsonMap['id'] = idOption[i];
      jsonMap['data'] = _value[i];
      jsonArr.add(json.encode(jsonMap));
      jsonString = jsonArr.join("\n");
      // print(_value);
    }
    // var MappedJson = {};

    // _value.forEach((element) {
    //   var key = element[index];
    //   MappedJson[key] = element;
    // });

    // print(jsonEncode(MappedJson));
  }

  void initState() {
    fetchJson1().then((value) {
      setState(() {
        _question.addAll(value);
        _selectedRadio = 0;
      });
    });
    fetchJson2().then((value) {
      setState(() {
        _questionoption.addAll(value);
        _selectedRadio = 0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Form(BuildContext, _question[index].question.toString(),
            _question[index].id, _question[index].type),
        // TextButton(
        //   onPressed: () {
        //     if (index > _question.length - 1) {
        //       if (index > _questionoption.length - 1) {
        //         setState(() {
        //           Navigator.pop(context);
        //           index--;
        //         });
        //       }
        //     } else {
        //       setState(() {
        //         index = 0;
        //       });
        //     }
        //   },
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     children: [
        //       Container(
        //           width: 60,
        //           height: 18,
        //           decoration: BoxDecoration(color: Colors.red),
        //           child: Text(
        //             " Previous ",
        //             style: TextStyle(color: Colors.white),
        //           )),
        //     ],
        //   ),
        // ),
        TextButton(
            onPressed: () {
              if (index < _question.length - 1) {
                if (index < _questionoption.length - 1) {
                  setState(() {
                    if (_question[index].type == 1 ||
                        _question[index].type == 2) {
                      var idForm;
                      for (int i = 0; i < _questionoption.length; i++)
                        if (_question[index].id ==
                            _questionoption[i].questionId)
                          idForm = _questionoption[i].id;
                      _value.add([form.text]);
                      idOption.add(idForm);
                    } else if (_question[index].type == 3 ||
                        _question[index].type == 4 ||
                        _question[index].type == 5 ||
                        _question[index].type == 7) {
                      _value.add([selectedChoice]);
                      idOption.add([RadioId]);
                    } else {
                      var CacheList = List.from(_valuesCheck);
                      var CacheId = List.from(idCheck);
                      _value.add(CacheList);
                      idOption.add(CacheId);
                      idCheck.clear();
                      _valuesCheck.clear();
                    }
                    index++;
                  });
                }
              } else {
                var join = _value.join(",");
                attachJson(_value);
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("the input value is"),
                        content: Text(jsonString),
                      );
                    });

                // index = _question.length;
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 18,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text(
                    " Next ",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ))
      ],
    )));
  }

  Widget Form(BuildContext, String quest, int id, int type) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(quest),
        // Text(type.toString()),
        for (int i = 0; i < _questionoption.length; i++)
          if (id == _questionoption[i].questionId)
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  radio(context, i, type, _questionoption[i].option,
                      _questionoption[i].id)
                ])
      ],
    );
  }

  @override
  Widget radio(
      BuildContext context, int index, int type, String option, int id) {
    if (type == 1 || type == 2)
      return TextField(
        controller: form,
        //controller: emailController,
        keyboardType: TextInputType.emailAddress,
        style: const TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          filled: true,
          // ignore: prefer_const_constructors
          prefixIcon: Icon(
            LineIcons.envelope,
            color: Colors.grey,
          ),
          fillColor: Colors.grey.shade300,
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.green,
              ),
              borderRadius: BorderRadius.circular(10.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white60,
              ),
              borderRadius: BorderRadius.circular(10.0)),
          contentPadding: const EdgeInsets.only(top: 14.0, left: 20.0),
          hintText: option,
        ),
      );
    if (type == 3 || type == 4 || type == 5 || type == 7)
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Radio(
                  value: index,
                  groupValue: _selectedRadio,
                  onChanged: (val) {
                    setSelectedRadio(val!);
                    _RadioSel(option, id);
                  },
                ),
                Text(option)
              ],
            ),
          ),
        ],
      );
    // if (type == 7) {
    //   return Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: <Widget>[
    //       Center(
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.center,
    //           children: [
    //             Radio(
    //               value: index,
    //               groupValue: _selectedRadio,
    //               onChanged: (val) {
    //                 setSelectedRadio(val!);
    //                 _RadioSel(option);
    //               },
    //             ),
    //             Text(option)
    //           ],
    //         ),
    //       ),
    //     ],
    //   );
    // }
    else
      return Column(children: [
        CheckboxListTile(
          value: _valuesCheck.contains(option),
          onChanged: (val) {
            _onSelected(val!, option, id);
          },
          title: Text(option),
        ),
      ]);
  }
}

// class MyForm extends StatelessWidget {
//   final List<dynamic> _question;
//   MyForm(this._question);

//   @override
//   Widget radio(BuildContext context) {
//     var question = _question[0]['question'];
//     var questionType = _question[0]['question_type'];
//     var options = <Widget>[];
//     for (var i = 1; i < _question.length; i++) {
//       var option = _question[i]['option'];
//       if (questionType == 'checkbox') {
//         option.add(CheckboxListTile(
//           title: Text(option),
//           value: _valuesChek.contains(choice[index]),
//           onChanged: (value) {
//             if (_valuesChek.isEmpty == true ||
//                  _valuesChek.length <= choice.length) {
//                 _onSelected(val!, choice[index]);
//               } else {
//                _valuesChek.clear();
//           },
//         ));
//       }
//     }
//   }
// }

// @override
// Widget radio(
//     BuildContext context, int index, String isRadio, List<String> choice) {
//   if (isRadio == "Checkbox")
//     return Column(children: [
//       CheckboxListTile(
//         value: _valuesChek.contains(choice[index]),
//         onChanged: (val) {
//           if (_valuesChek.isEmpty == true ||
//               _valuesChek.length <= _questionoption.length) {
//             _onSelected(val!, choice[index]);
//           } else {
//             _valuesChek.clear();
//           }
//         },
//         title: Text(choice[index]),
//       ),
//     ]);
// if (isRadio == "Radio")
//   return Column(
//     children: <Widget>[
//       Radio(
//         value: index,
//         groupValue: _selectedRadio,
//         onChanged: (val) {
//           setSelectedRadio(val!);
//           _RadioSel(choice[index]);
//         },
//       ),
//       Text(choice[index])
//     ],
//   );
// else
// return TextField(
//   controller: form,
//   // controller: emailController,
//   keyboardType: TextInputType.emailAddress,
//   style: const TextStyle(
//     color: Colors.black,
//   ),
//   decoration: InputDecoration(
//     filled: true,
//     // ignore: prefer_const_constructors
//     prefixIcon: Icon(
//       LineIcons.envelope,
//       color: Colors.grey,
//     ),
//     fillColor: Colors.grey.shade300,
//     focusedBorder: OutlineInputBorder(
//         borderSide: const BorderSide(
//           color: Colors.green,
//         ),
//         borderRadius: BorderRadius.circular(10.0)),
//     enabledBorder: OutlineInputBorder(
//         borderSide: const BorderSide(
//           color: Colors.white60,
//         ),
//         borderRadius: BorderRadius.circular(10.0)),
//     contentPadding: const EdgeInsets.only(top: 14.0, left: 20.0),
//     hintText: choice[index],
//   ),
// );
