import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doctor_appointment_app/core/networking/api_service.dart';
import 'package:doctor_appointment_app/features/auth/data/models/login_models/login_request_model/login_request_model.dart';
import 'package:doctor_appointment_app/features/auth/data/models/sign_up_models/sign_up_request_body.dart';
import 'package:doctor_appointment_app/features/auth/data/models/sign_up_models/sign_up_response_body.dart';
import '../../../../core/failures/failures.dart';
import '../models/login_models/login_response_model/ResponseBody.dart';
import 'auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiService apiService;

  AuthRepoImpl(this.apiService);

  @override
  Future<Either<Failures, LoginResponseBody>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      Map<String, dynamic> loginResponseBody = await apiService.login(
        endPoint: 'auth/login',
        loginRequestBody: loginRequestBody,
      );
      return right(LoginResponseBody.fromJson(loginResponseBody));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, SignUpResponseBody>> signUp(
      SignUpRequestBody signUpRequestBody) async {
    try {
      Map<String, dynamic> signUpResponseBody = await apiService.signUp(
          endPoint: 'auth/register', signUpRequestBody: signUpRequestBody);
      print('wwwwwwwwwwwwwwwwww$signUpRequestBody');

      return right(SignUpResponseBody.fromJson(signUpResponseBody));
    } catch (e) {
      if (e is DioException) {
        print('eeeeeeeee ${e.toString()}');
        return left(ServerFailure.fromDioException(e));
      }
      print('eeeeeeeee ${e.toString()}');
      return left(ServerFailure(e.toString()));
    }
  }
}
