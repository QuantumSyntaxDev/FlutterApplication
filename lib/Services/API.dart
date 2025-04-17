import 'package:dio/dio.dart';

class Api {
  static final Dio _dio = Dio(BaseOptions(baseUrl: 'https://10.0.2.2:8080'));

  // пост 
  static Future<Map<String, dynamic>?> postany(
    String endpoint,
    Map<String, dynamic> data,
  ) async {
    final res = await _dio.post(endpoint, data: data);
    if (res.statusCode == 200 || res.statusCode == 201){
      return res.data;
    }
  }

  // получение get
  static Future<List<dynamic>?> getcatalog(
    String endpoint,
    String token,
  ) async {
    final res = await _dio.get(
      endpoint,
      options: Options(headers: {'Autarization': 'Bear $token'}),
    );
    if (res.statusCode == 200 || res.statusCode == 201) {
      return res.data;
    }
  }
}