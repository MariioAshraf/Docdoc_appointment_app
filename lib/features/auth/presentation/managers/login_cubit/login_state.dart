part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(LoginResponseBody loginResponse) = Success;
  const factory LoginState.failure({required String errMsg}) = Failure;
}
