// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_element
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';

class CookieManager {
  static CookieManager? _instance;

  static getInstance() {
    _instance ??= CookieManager();
    return _instance;
  }

  void addToCookie(String key, String value, int dura) {
    document.cookie = "$key=$value; max-age=${dura}; path=/;";
  }

  String getCookie(String key) {
    String? cookies = document.cookie;
    List<String> listValues = cookies!.isNotEmpty ? cookies.split(";") : [];
    String matchVal = "";
    for (int i = 0; i < listValues.length; i++) {
      List<String> map = listValues[i].split("=");
      String _key = map[0].trim();
      String _val = map[1].trim();
      if (key == _key) {
        matchVal = _val;
        break;
      }
    }
    return matchVal;
  }

  void removeCookie(String key) {
    addToCookie(key, '', 0);
  }
}
