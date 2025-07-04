// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppUser user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function() unauthenticated,
    required TResult Function() success,
    required TResult Function() emailResetSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AppUser user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function()? unauthenticated,
    TResult? Function()? success,
    TResult? Function()? emailResetSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppUser user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function()? unauthenticated,
    TResult Function()? success,
    TResult Function()? emailResetSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_User value) user,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailResetSend value) emailResetSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_User value)? user,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Success value)? success,
    TResult? Function(_EmailResetSend value)? emailResetSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_User value)? user,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Logout value)? logout,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Success value)? success,
    TResult Function(_EmailResetSend value)? emailResetSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppUser user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function() unauthenticated,
    required TResult Function() success,
    required TResult Function() emailResetSend,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AppUser user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function()? unauthenticated,
    TResult? Function()? success,
    TResult? Function()? emailResetSend,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppUser user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function()? unauthenticated,
    TResult Function()? success,
    TResult Function()? emailResetSend,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_User value) user,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailResetSend value) emailResetSend,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_User value)? user,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Success value)? success,
    TResult? Function(_EmailResetSend value)? emailResetSend,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_User value)? user,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Logout value)? logout,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Success value)? success,
    TResult Function(_EmailResetSend value)? emailResetSend,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$UserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserImpl implements _User {
  const _$UserImpl(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'AuthState.user(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppUser user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function() unauthenticated,
    required TResult Function() success,
    required TResult Function() emailResetSend,
  }) {
    return user(this.user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AppUser user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function()? unauthenticated,
    TResult? Function()? success,
    TResult? Function()? emailResetSend,
  }) {
    return user?.call(this.user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppUser user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function()? unauthenticated,
    TResult Function()? success,
    TResult Function()? emailResetSend,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this.user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_User value) user,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailResetSend value) emailResetSend,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_User value)? user,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Success value)? success,
    TResult? Function(_EmailResetSend value)? emailResetSend,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_User value)? user,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Logout value)? logout,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Success value)? success,
    TResult Function(_EmailResetSend value)? emailResetSend,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class _User implements AuthState {
  const factory _User(final AppUser user) = _$UserImpl;

  AppUser get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppUser user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function() unauthenticated,
    required TResult Function() success,
    required TResult Function() emailResetSend,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AppUser user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function()? unauthenticated,
    TResult? Function()? success,
    TResult? Function()? emailResetSend,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppUser user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function()? unauthenticated,
    TResult Function()? success,
    TResult Function()? emailResetSend,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_User value) user,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailResetSend value) emailResetSend,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_User value)? user,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Success value)? success,
    TResult? Function(_EmailResetSend value)? emailResetSend,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_User value)? user,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Logout value)? logout,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Success value)? success,
    TResult Function(_EmailResetSend value)? emailResetSend,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppUser user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function() unauthenticated,
    required TResult Function() success,
    required TResult Function() emailResetSend,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AppUser user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function()? unauthenticated,
    TResult? Function()? success,
    TResult? Function()? emailResetSend,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppUser user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function()? unauthenticated,
    TResult Function()? success,
    TResult Function()? emailResetSend,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_User value) user,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailResetSend value) emailResetSend,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_User value)? user,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Success value)? success,
    TResult? Function(_EmailResetSend value)? emailResetSend,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_User value)? user,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Logout value)? logout,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Success value)? success,
    TResult Function(_EmailResetSend value)? emailResetSend,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LogoutImplCopyWith<$Res> {
  factory _$$LogoutImplCopyWith(
          _$LogoutImpl value, $Res Function(_$LogoutImpl) then) =
      __$$LogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LogoutImpl>
    implements _$$LogoutImplCopyWith<$Res> {
  __$$LogoutImplCopyWithImpl(
      _$LogoutImpl _value, $Res Function(_$LogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutImpl implements _Logout {
  const _$LogoutImpl();

  @override
  String toString() {
    return 'AuthState.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppUser user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function() unauthenticated,
    required TResult Function() success,
    required TResult Function() emailResetSend,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AppUser user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function()? unauthenticated,
    TResult? Function()? success,
    TResult? Function()? emailResetSend,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppUser user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function()? unauthenticated,
    TResult Function()? success,
    TResult Function()? emailResetSend,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_User value) user,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailResetSend value) emailResetSend,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_User value)? user,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Success value)? success,
    TResult? Function(_EmailResetSend value)? emailResetSend,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_User value)? user,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Logout value)? logout,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Success value)? success,
    TResult Function(_EmailResetSend value)? emailResetSend,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthState {
  const factory _Logout() = _$LogoutImpl;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppUser user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function() unauthenticated,
    required TResult Function() success,
    required TResult Function() emailResetSend,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AppUser user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function()? unauthenticated,
    TResult? Function()? success,
    TResult? Function()? emailResetSend,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppUser user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function()? unauthenticated,
    TResult Function()? success,
    TResult Function()? emailResetSend,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_User value) user,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailResetSend value) emailResetSend,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_User value)? user,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Success value)? success,
    TResult? Function(_EmailResetSend value)? emailResetSend,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_User value)? user,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Logout value)? logout,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Success value)? success,
    TResult Function(_EmailResetSend value)? emailResetSend,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppUser user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function() unauthenticated,
    required TResult Function() success,
    required TResult Function() emailResetSend,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AppUser user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function()? unauthenticated,
    TResult? Function()? success,
    TResult? Function()? emailResetSend,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppUser user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function()? unauthenticated,
    TResult Function()? success,
    TResult Function()? emailResetSend,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_User value) user,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailResetSend value) emailResetSend,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_User value)? user,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Success value)? success,
    TResult? Function(_EmailResetSend value)? emailResetSend,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_User value)? user,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Logout value)? logout,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Success value)? success,
    TResult Function(_EmailResetSend value)? emailResetSend,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$EmailResetSendImplCopyWith<$Res> {
  factory _$$EmailResetSendImplCopyWith(_$EmailResetSendImpl value,
          $Res Function(_$EmailResetSendImpl) then) =
      __$$EmailResetSendImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailResetSendImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$EmailResetSendImpl>
    implements _$$EmailResetSendImplCopyWith<$Res> {
  __$$EmailResetSendImplCopyWithImpl(
      _$EmailResetSendImpl _value, $Res Function(_$EmailResetSendImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmailResetSendImpl implements _EmailResetSend {
  const _$EmailResetSendImpl();

  @override
  String toString() {
    return 'AuthState.emailResetSend()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailResetSendImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(AppUser user) user,
    required TResult Function(String message) error,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function() unauthenticated,
    required TResult Function() success,
    required TResult Function() emailResetSend,
  }) {
    return emailResetSend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(AppUser user)? user,
    TResult? Function(String message)? error,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function()? unauthenticated,
    TResult? Function()? success,
    TResult? Function()? emailResetSend,
  }) {
    return emailResetSend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(AppUser user)? user,
    TResult Function(String message)? error,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function()? unauthenticated,
    TResult Function()? success,
    TResult Function()? emailResetSend,
    required TResult orElse(),
  }) {
    if (emailResetSend != null) {
      return emailResetSend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_User value) user,
    required TResult Function(_Error value) error,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Logout value) logout,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Success value) success,
    required TResult Function(_EmailResetSend value) emailResetSend,
  }) {
    return emailResetSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_User value)? user,
    TResult? Function(_Error value)? error,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Success value)? success,
    TResult? Function(_EmailResetSend value)? emailResetSend,
  }) {
    return emailResetSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_User value)? user,
    TResult Function(_Error value)? error,
    TResult Function(_Loading value)? loading,
    TResult Function(_Logout value)? logout,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Success value)? success,
    TResult Function(_EmailResetSend value)? emailResetSend,
    required TResult orElse(),
  }) {
    if (emailResetSend != null) {
      return emailResetSend(this);
    }
    return orElse();
  }
}

abstract class _EmailResetSend implements AuthState {
  const factory _EmailResetSend() = _$EmailResetSendImpl;
}
