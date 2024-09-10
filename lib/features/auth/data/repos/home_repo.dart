import 'package:dartz/dartz.dart';
import 'package:doctor_appointment_app/features/auth/data/models/login_models/login_response_model/ResponseBody.dart';

import '../../../../core/failures/failures.dart';
import '../models/login_models/login_request_model/login_request_model.dart';

abstract class HomeRepo{
  Future<Either<Failures,LoginResponseBody>>login(LoginRequestBody loginRequestBody);
}