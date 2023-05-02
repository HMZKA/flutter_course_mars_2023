import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;
  static init() {
    dio = Dio(BaseOptions(baseUrl: "https://api.storerestapi.com/"));
  }

  static Future<Response?> postData(String path,
      {required Map<String, dynamic> data}) async {
    return await dio?.post(path, data: data);
  }
}
