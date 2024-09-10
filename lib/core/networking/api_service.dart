import 'package:dio/dio.dart';
import 'package:doctor_appointment_app/features/auth/data/models/login_models/login_request_model/login_request_model.dart';

class ApiService {

 final Dio _dio;
  final String _baseUrl = 'https://vcare.integration25.com/api/';

  ApiService(this._dio);

  Future<Map<String, dynamic>> login(
      {required String endPoint,
      required LoginRequestBody loginRequestBody}) async {
    var response = await _dio.post(
      '$_baseUrl$endPoint',
      data: loginRequestBody.toJson(), //this line
      options: Options(
        headers: {
          'Accept' : 'application/json'
        }
      )
    );
    return response.data;
  }

}
