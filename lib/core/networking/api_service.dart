import 'package:dio/dio.dart';
import 'package:doctor_appointment_app/features/auth/data/models/login_models/login_request_model/login_request_model.dart';
import 'package:doctor_appointment_app/features/auth/data/models/sign_up_models/sign_up_request_body.dart';

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
  Future<Map<String, dynamic>> signUp(
      {required String endPoint,
      required SignUpRequestBody signUpRequestBody}) async {
    var response = await _dio.post(
      '$_baseUrl$endPoint',
      data: signUpRequestBody.toJson(),
        options: Options(
            headers: {
              'Accept' : 'application/json',
              'Content-Type' : 'application/json',
            }
        )
    );
    return response.data;
  }

}
