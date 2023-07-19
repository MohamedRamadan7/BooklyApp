import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final String baseUrl = 'https://www.googleapis.com/books/v1/';

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endpint}) async {
    var respose = await dio.get('$baseUrl$endpint');
    return respose.data;
  }
}
