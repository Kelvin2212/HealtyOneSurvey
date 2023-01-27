import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../models/login_model.dart';
import '../../services/cookie_manager.dart';

Future userLogin(LoginBody data) async {
  http.Response? response;
  var url =
      "https://izmo.chc.pharmalink.id/izmo-auth/api/authentication/global-login";
  try {
    response = await http.post(Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode(data.toJson()));
  } catch (e) {
    print(e);
  }
  return response;
}

Future userRefresh() async {
  var cookie = CookieManager.getInstance().getCookie('refresh_token');
  var response;
  const url =
      "https://izmo.chc.pharmalink.id/izmo-auth/api/authentication/auth-request";
  try {
    response = await http.post(Uri.parse(url),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode({
          "refresh": "${cookie}",
        }));
  } catch (e) {
    print(e);
  }
  return response;
}
