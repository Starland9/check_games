part of 'users_cubit.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.initial() = _Initial;
  const factory UsersState.loading() = _Loading;
  const factory UsersState.loaded(AppUser user) = _Loaded;
  const factory UsersState.error(String message) = _Error;
  const factory UsersState.usersLoaded(List<AppUser> users) = _UsersLoaded;
}
