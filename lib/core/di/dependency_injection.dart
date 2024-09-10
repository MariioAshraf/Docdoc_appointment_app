import 'package:dio/dio.dart';
import 'package:doctor_appointment_app/core/networking/api_service.dart';
import 'package:doctor_appointment_app/features/auth/data/repos/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final gitIt = GetIt.instance;

void serviceLocator() {
  final dio = Dio();
  gitIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  gitIt.registerLazySingleton<HomeRepoImpl>(()=>HomeRepoImpl(gitIt.get<ApiService>()));
}
