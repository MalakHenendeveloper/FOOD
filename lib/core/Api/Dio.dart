import 'package:dio/dio.dart';
import 'package:food/core/Api/EndPoints.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
@singleton
class ApiManger {
  late Dio dio;
  ApiManger() {
    dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true));
  }
  Future<Response> Createpaymentintents(String currency, int amount) {
    return dio.post(EndPoints.basUrl,
        data: {
      'currency':currency,
          'amount':amount,
        },
        options: Options(headers: {
          "Authorization": "Bearer ${EndPoints.secretkey}",
          "Content-Type": "application/x-www-form-urlencoded",
    }));
  }

}
