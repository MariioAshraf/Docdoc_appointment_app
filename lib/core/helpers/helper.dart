// import 'package:doctor_appointment_app/features/auth/data/models/login_models/login_response_model/ResponseBody.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import '../../../data/models/login_models/login_request_model/login_request_model.dart';
// import '../../../data/repos/auth_repo.dart';
//
// part 'login_state.dart';
//
// class LoginCubit extends Cubit<LoginState> {
//   LoginCubit(this.homeRepo) : super(LoginInitial());
//
//   final HomeRepo homeRepo;
//   final GlobalKey<FormState> formKey = GlobalKey();
//   final emailController = TextEditingController();
//   final  passwordController=  TextEditingController();
//   static LoginCubit get(BuildContext context) => BlocProvider.of(context);
//
//   Future<void> login(LoginRequestBody loginRequestBody) async {
//     emit(LoginLoading());
//     var result = await homeRepo.login(loginRequestBody);
//     result.fold((failure) {
//       emit(LoginFailure(failure.errMsg));
//     }, (loginResponse) {
//       emit(LoginSuccess(loginResponse));
//     });
//   }
// }






//
//
// part of 'login_cubit.dart';
//
// sealed class LoginState {}
//
// final class LoginInitial extends LoginState {}
// final class LoginLoading extends LoginState {}
//
// final class LoginFailure extends LoginState {
//   final String errMsg;
//   LoginFailure( this.errMsg,);
// }
// final class LoginSuccess extends LoginState {
//   final LoginResponseBody  loginResponse;
//
//   LoginSuccess(this.loginResponse);
// }
