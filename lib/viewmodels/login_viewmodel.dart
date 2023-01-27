import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/login_model.dart';
import 'package:flutter_application_1/services/cookie_manager.dart';
import 'package:flutter_application_1/services/login_api.dart';
import 'package:http/http.dart' as http;

enum ListState { initial, loading, loaded, error }

class LoginViewModel extends ChangeNotifier {
  ListState _listState = ListState.initial;
  bool isBack = false;

  get listState => _listState;

  Future<void> attemptLogin(LoginBody body) async {
    _listState = ListState.loading;
    notifyListeners();

    try {
      http.Response response =
          (await userLogin(body).timeout(const Duration(seconds: 60)));

      if (response.statusCode == 200) {
        Map body = jsonDecode(response.body);
        CookieManager.getInstance()
            .addToCookie("access_token", body['access'], 604800);
        CookieManager.getInstance()
            .addToCookie("refresh_token", body["refresh"], 604800);
        _listState = ListState.loaded;
      } else {
        _listState = ListState.error;
      }

      if (response.statusCode == 400 || response.statusCode == 500) {
        _listState = ListState.error;
      }
    } on TimeoutException catch (e) {
      _listState = ListState.error;
    } catch (e) {
      _listState = ListState.error;
    }

    notifyListeners();
  }

  Future<void> refreshToken() async {
    _listState = ListState.loading;
    notifyListeners();

    try {
      http.Response response = (await userRefresh());

      if (response.statusCode == 200) {
        Map body = jsonDecode(response.body);
        CookieManager.getInstance()
            .addToCookie("access_token", body['access'], 604800);
        _listState = ListState.loaded;
      } else {
        _listState = ListState.error;
      }

      if (response.statusCode == 404 || response.statusCode == 500) {
        _listState = ListState.error;
      }
    } on TimeoutException catch (e) {
      _listState = ListState.error;
    } catch (e) {
      _listState = ListState.error;
    }

    notifyListeners();
  }
}
