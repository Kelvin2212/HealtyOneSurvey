import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

Future userRegister(
    username, password, firstName, lastName, whatsapp, gmail, ctx) async {
  var url =
      "https://staging-izmo.chc.pharmalink.id/izmo-auth/api/authentication/register";

  var response = await http.post(Uri.parse(url),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: jsonEncode({
        'reference_code': null,
        'nik': null,
        'username': username,
        'password': password,
        'first_name': firstName,
        'last_name': lastName,
        'whatsapp': whatsapp,
        "gmail": gmail
      }));

  try {
    if (response.statusCode == 201 || response.statusCode == 200) {
      Navigator.pop(ctx);
    }
  } catch (e) {
    print(e);
  }
}

Future<dynamic> registMethod(BuildContext context, Size screenSize) {
  final GlobalKey<FormState> form = GlobalKey<FormState>();
  final TextEditingController firstController = TextEditingController();
  final TextEditingController lastController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController gmailController = TextEditingController();
  final TextEditingController waController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          scrollable: true,
          elevation: 10,
          title: Text(
            'Registrasi Akun',
            textAlign: TextAlign.center,
            style: GoogleFonts.raleway(
              letterSpacing: 3,
              fontSize: screenSize.height / 40,
              color: Colors.black,
            ),
          ),
          content: Container(
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
                      controller: firstController,
                      decoration: const InputDecoration(
                        labelText: 'First Name',
                        icon: Icon(FontAwesome.address_card),
                      ),
                      validator: (text) {
                        String pattern = r"[a-zA-Z+]";
                        RegExp regex = RegExp(pattern);
                        if (!(text!.isNotEmpty)) {
                          return "Nama depan kosong";
                        }
                        if (!regex.hasMatch(text)) {
                          return "ANEH NAMAMU!";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: lastController,
                      decoration: const InputDecoration(
                        labelText: 'Last Name',
                        icon: Icon(FontAwesome.id_card),
                      ),
                      validator: (text) {
                        String pattern = r"[a-zA-Z+]";
                        RegExp regex = RegExp(pattern);
                        if (!(text!.isNotEmpty)) {
                          return "Nama belakang kosong";
                        }
                        if (!regex.hasMatch(text)) {
                          return "ADA ANGKANYA MASA?";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        icon: Icon(FontAwesome.user_circle),
                      ),
                      validator: (text) {
                        if (!(text!.isNotEmpty)) {
                          return "Username kosong";
                        }
                        if (!(text.length > 3)) {
                          return "Minimal 4 karakter";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: gmailController,
                      decoration: const InputDecoration(
                        labelText: 'Gmail',
                        icon: Icon(FontAwesome.google),
                      ),
                      validator: (text) {
                        String pattern =
                            r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@gmail\.com$";
                        RegExp regex = RegExp(pattern, caseSensitive: false);
                        if (!(text!.isNotEmpty)) {
                          return "Gmail kosong";
                        }
                        if (!regex.hasMatch(text)) {
                          return "Gmail tidak valid";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: waController,
                      decoration: const InputDecoration(
                        labelText: 'Whatsapp',
                        icon: Icon(FontAwesome.whatsapp),
                      ),
                      validator: (text) {
                        String pattern = r"[0-9+]";
                        RegExp regex = RegExp(pattern);
                        if (!(text!.isNotEmpty)) {
                          return "No Whatsapp kosong";
                        }
                        if (!regex.hasMatch(text) || !(text.length > 10)) {
                          return "No Whatsapp tidak valid";
                        }
                        if (!(text.startsWith('0') || text.startsWith('+62'))) {
                          return "Tidak Berawalan 0/+62";
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
                        String pattern =
                            r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])";
                        RegExp regex = RegExp(pattern);
                        if (!(text!.isNotEmpty)) {
                          return "Password kosong";
                        }
                        if (!regex.hasMatch(text)) {
                          return "Memerlukan angka & kapital";
                        }
                        if (!(text.length > 7)) {
                          return "Minimal 8 karakter";
                        }
                      },
                    ),
                    TextFormField(
                      controller: confirmController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Konfirmasi Password',
                        icon: Icon(FontAwesome.lock),
                      ),
                      validator: (text) {
                        if (!(text == passController.value.text)) {
                          return "Password tidak sama";
                        }
                        if (!(text!.length > 7)) {
                          return "Password tidak valid";
                        }
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: screenSize.height / 50),
                      child: OutlinedButton(
                        onPressed: () {
                          if (form.currentState!.validate()) {
                            userRegister(
                                nameController.value.text,
                                passController.value.text,
                                firstController.value.text,
                                lastController.value.text,
                                waController.value.text,
                                gmailController.value.text,
                                context);
                          }
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenSize.width / 90),
                          child: const Text(
                            'Daftar',
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
      }).then((exit) {
    if (exit != null) {
      Navigator.pop(context, firstController.value);
      Navigator.pop(context, lastController.value);
      Navigator.pop(context, nameController.value);
      Navigator.pop(context, gmailController.value);
      Navigator.pop(context, waController.value);
      Navigator.pop(context, passController.value);
      Navigator.pop(context, confirmController.value);
    } else {
      return;
    }
  });
}
