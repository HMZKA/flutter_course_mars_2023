import 'package:shared_preferences/shared_preferences.dart';

class AppCache {
  static SharedPreferences? sharedPref;
  static init() async {
    sharedPref = await SharedPreferences.getInstance();
  }

  static setBoolean(String key, bool value) async {
    await sharedPref?.setBool(key, value);
  }

  static getData(String key) {
    return sharedPref?.get(key);
  }
}
