import 'package:bloc/bloc.dart';
import 'package:check_games/src/logic/models/app_user/app_user.dart';
import 'package:check_games/src/logic/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository _authRepository;

  AuthCubit(AuthRepository authRepository)
      : _authRepository = authRepository,
        super(const AuthState.initial());

  Future<void> register(String name, String email, String password) async {
    try {
      emit(const AuthState.loading());
      final user = await _authRepository.register(name, email, password);
      emit(AuthState.user(user));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> login(String email, String password) async {
    try {
      emit(const AuthState.loading());
      final user = await _authRepository.login(email, password);
      emit(AuthState.user(user));
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> logout() async {
    try {
      emit(const AuthState.loading());
      await _authRepository.logout();
      emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      emit(const AuthState.loading());
      await _authRepository.resetPassword(email);
      emit(const AuthState.emailResetSend());
    } catch (e) {
      emit(AuthState.error(e.toString()));
    }
  }
}
