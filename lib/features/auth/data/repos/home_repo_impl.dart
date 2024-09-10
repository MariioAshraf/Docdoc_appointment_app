import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:doctor_appointment_app/core/networking/api_service.dart';
import 'package:doctor_appointment_app/features/auth/data/models/login_models/login_request_model/login_request_model.dart';
import '../../../../core/failures/failures.dart';
import '../models/login_models/login_response_model/ResponseBody.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

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
}
