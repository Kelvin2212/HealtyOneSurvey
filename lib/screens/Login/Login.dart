import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../models/login_model.dart';
import '../../viewmodels/login_viewmodel.dart';

Future<dynamic> loginAlert(BuildContext context, Size screenSize) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        final GlobalKey<FormState> form = GlobalKey<FormState>();
        var userController = TextEditingController();
        var passController = TextEditingController();

        Future<void> _loginForm() async {
          String uName = userController.value.text;
          String pWord = passController.value.text;

          LoginBody loginBody = LoginBody(
            username: uName,
            password: pWord,
            ip: '0.0.0.0',
            csrf: 'None',
            userAgent: 'windows',
          );

          var provider = Provider.of<LoginViewModel>(context, listen: false);
          await provider.attemptLogin(loginBody);

          if (provider.listState == ListState.loaded) {
            Navigator.of(context).pop();
          }

          if (provider.listState == ListState.error) {
            showSnackBarAsBottomSheet(context, 'Username / password salah!');
          }
        }

        return AlertDialog(
          scrollable: true,
          elevation: 10,
          title: Text(
            'Masuk',
            textAlign: TextAlign.center,
            style: GoogleFonts.raleway(
              letterSpacing: 3,
              fontSize: screenSize.width / 40,
              color: Colors.black,
            ),
          ),
          content: SizedBox(
            width: screenSize.width / 3,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: screenSize.height / 90,
                  horizontal: screenSize.width / 60),
              child: Form(
                key: form,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: userController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        icon: Icon(FontAwesome.user_circle),
                      ),
                      validator: (text) {
                        if (!(text!.isNotEmpty)) {
                          return "Username tidak boleh kosong";
                        }
                        if (!(text.length > 3)) {
                          return "Username minimal memiliki 4 karakter";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: passController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        icon: Icon(FontAwesome.key),
                      ),
                      validator: (text) {
                        String pattern = r"^(?=.*?[a-z])(?=.*?[0-9])";
                        RegExp regex = RegExp(pattern);
                        if (!(text!.isNotEmpty)) {
                          return "Password tidak boleh kosong";
                        }
                        if (!regex.hasMatch(text)) {
                          return "Password minimal memiliki 1 huruf kapital & 1 angka";
                        }
                        if (!(text.length > 7)) {
                          return "Password minimal memiliki 8 karakter";
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenSize.height / 50),
                      child: OutlinedButton(
                        onPressed: () {
                          if (form.currentState!.validate()) {
                            _loginForm();
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width / 90),
                          child: const Text(
                            'Masuk',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }).then((exit) {});
}

void showSnackBarAsBottomSheet(BuildContext context, String message) {
  showModalBottomSheet<void>(
    context: context,
    barrierColor: const Color.fromRGBO(0, 0, 0, 0),
    builder: (BuildContext context) {
      Future.delayed(const Duration(seconds: 5), () {
        try {
          Navigator.pop(context);
        } on Exception {}
      });
      return Container(
          color: Colors.grey.shade800,
          padding: const EdgeInsets.all(16),
          child: Wrap(children: [
            Text(
              message,
              style:
                  GoogleFonts.robotoCondensed().copyWith(color: Colors.white),
            )
          ]));
    },
  );
}
