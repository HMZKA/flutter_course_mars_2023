import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(BaseOptions(baseUrl: "https://newsapi.org/v2/"));
  }

  static Future getData() async {
    await dio?.get('top-headlines', queryParameters: {
      "country": "eg",
      "category": "sport",
      "apiKey": "a269e4f1de864efc85f38b36f1bae318"
    }).then((value) {
      print(value.data);
    });
  }
}
