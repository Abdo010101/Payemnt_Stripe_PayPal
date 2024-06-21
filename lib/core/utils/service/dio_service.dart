import 'package:dio/dio.dart';

class DioHeloper {
  final Dio dio = Dio();

  Future<Response> post(
      {required Map<String, dynamic> body,
      required String token,
      required String url,
      Map<String, String>? headers,
      String? contentType}) async {
    var response = await dio.post(url,
        data: body,
        options: Options(
          contentType: Headers.formUrlEncodedContentType,
          headers: headers ?? {'Authorization': "Bearer $token"},
        ));
    return response;
  }
}
