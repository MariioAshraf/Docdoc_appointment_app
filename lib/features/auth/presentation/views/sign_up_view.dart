import 'package:doctor_appointment_app/core/di/dependency_injection.dart';
import 'package:doctor_appointment_app/features/auth/data/repos/auth_repo_impl.dart';
import 'package:doctor_appointment_app/features/auth/presentation/managers/sign_up_cubit/sign_up_cubit.dart';
import 'package:doctor_appointment_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: BlocProvider(
      create: (context) => SignUpCubit(gitIt.get<AuthRepoImpl>()),
      child: const SafeArea(child: SignUpViewBody()),
    ));
  }
}

