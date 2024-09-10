import 'package:doctor_appointment_app/core/di/dependency_injection.dart';
import 'package:doctor_appointment_app/features/auth/data/repos/home_repo_impl.dart';
import 'package:doctor_appointment_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../managers/login_cubit/login_cubit.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => LoginCubit(gitIt.get<HomeRepoImpl>()),
          child: const LoginViewBody(),
        ),
      ),
    );
  }
}
