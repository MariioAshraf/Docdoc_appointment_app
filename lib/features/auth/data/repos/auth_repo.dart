import 'package:dartz/dartz.dart';
import 'package:doctor_appointment_app/features/auth/data/models/login_models/login_response_model/ResponseBody.dart';
import 'package:doctor_appointment_app/features/auth/data/models/sign_up_models/sign_up_request_body.dart';
import 'package:doctor_appointment_app/features/auth/data/models/sign_up_models/sign_up_response_body.dart';

import '../../../../core/failures/failures.dart';
import '../models/login_models/login_request_model/login_request_model.dart';

abstract class AuthRepo{
  Future<Either<Failures,LoginResponseBody>>login(LoginRequestBody loginRequestBody);
  Future<Either<Failures,SignUpResponseBody>>signUp(SignUpRequestBody signUpRequestBody);
}