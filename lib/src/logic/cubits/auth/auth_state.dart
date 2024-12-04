part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.user(AppUser user) = _User;
  const factory AuthState.error(String message) = _Error;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.logout() = _Logout;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.success() = _Success;
  const factory AuthState.emailResetSend() = _EmailResetSend;
}
