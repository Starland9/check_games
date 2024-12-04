import 'package:bloc/bloc.dart';
import 'package:check_games/src/logic/models/app_user/app_user.dart';
import 'package:check_games/src/logic/repositories/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_cubit.freezed.dart';
part 'users_state.dart';

class UsersCubit extends Cubit<UsersState> {
  late final UserRepository _repository;
  UsersCubit(UserRepository repository)
      : _repository = repository,
        super(const UsersState.initial());

  Future<void> getUserById(String id) async {
    try {
      emit(const UsersState.loading());
      final user = await _repository.getUserById(id);
      if (user != null) {
        emit(UsersState.loaded(user));
      } else {
        emit(const UsersState.error('User not found'));
      }
    } catch (e) {
      emit(UsersState.error(e.toString()));
    }
  }

  Future<void> getUsersByIds(List<String> ids) async {
    try {
      emit(const UsersState.loading());
      final users = await _repository.getUsersByIds(ids);
      emit(UsersState.usersLoaded(users));
    } catch (e) {
      emit(UsersState.error(e.toString()));
    }
  }
}
