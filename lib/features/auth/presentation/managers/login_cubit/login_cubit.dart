import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/login_models/login_request_model/login_request_model.dart';
import '../../../data/models/login_models/login_response_model/ResponseBody.dart';
import '../../../data/repos/home_repo.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.homeRepo) : super(const LoginState.initial());
  static LoginCubit get(BuildContext context) => BlocProvider.of(context);
  final HomeRepo homeRepo;
  final GlobalKey<FormState> formKey = GlobalKey();
  final emailController = TextEditingController();
  final  passwordController=  TextEditingController();

  Future<void> login(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    var result = await homeRepo.login(loginRequestBody);
    result.fold((failure) {
      emit(LoginState.failure(errMsg: failure.errMsg));
    }, (loginResponse) {
      emit(LoginState.success(loginResponse));
    });
  }
}
