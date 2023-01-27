import 'package:flutter/material.dart';

class loginAlert extends StatelessWidget {
  const loginAlert({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Color.fromARGB(255, 2, 158, 15),
      insetPadding: EdgeInsets.symmetric(horizontal: 60.0),
      child: Container(
          width: 300,
          height: 100,
          child: Center(child: Text('Please Login First'))),
    );
  }
}
