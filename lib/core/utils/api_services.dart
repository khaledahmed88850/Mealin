import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio = Dio();
  final _baseUrl = 'https://dummyjson.com/recipes';
  ApiServices();

  Future<Map<String, dynamic>> get({required String endPoint }) async {
    var response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
