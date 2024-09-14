import 'package:bloc/bloc.dart';
import 'package:doctor_appointment_app/features/auth/data/models/sign_up_models/sign_up_request_body.dart';
import 'package:doctor_appointment_app/features/auth/data/models/sign_up_models/sign_up_response_body.dart';
import 'package:doctor_appointment_app/features/auth/data/repos/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.dart';

part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(const SignUpState.initial());
  final AuthRepo authRepo;

  static SignUpCubit get(BuildContext context) => BlocProvider.of(context);
  final GlobalKey<FormState> formKey = GlobalKey();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  Future<void> signUp() async {
    emit(const SignUpState.loading());
    var result = await authRepo.signUp(
      SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        gender: 0,
      ),
    );
    print('wwwwwwwwwwwwwwwwwwwwww$result');
    result.fold(
      (failure) {
        emit(SignUpState.failure(errMsg: failure.errMsg));
      },
      (signUpResponse) {
        emit(SignUpState.success(signUpResponse));
      },
    );
  }
}
