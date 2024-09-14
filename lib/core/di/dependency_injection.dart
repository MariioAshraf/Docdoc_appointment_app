import 'package:dio/dio.dart';
import 'package:doctor_appointment_app/core/networking/api_service.dart';
import 'package:doctor_appointment_app/core/networking/dio_factory.dart';
import 'package:doctor_appointment_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:get_it/get_it.dart';

final gitIt = GetIt.instance;

void serviceLocator() {
  Dio dio = DioFactory.getDio();
  gitIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  gitIt.registerLazySingleton<AuthRepoImpl>(() => AuthRepoImpl(gitIt.get<ApiService>()));
}
