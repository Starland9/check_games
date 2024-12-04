// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:check_games/src/logic/models/app_game/app_game.dart' as _i10;
import 'package:check_games/src/screens/auth/auth_screen.dart' as _i1;
import 'package:check_games/src/screens/auth/forgot_password_screen.dart'
    as _i2;
import 'package:check_games/src/screens/auth/login_screen.dart' as _i5;
import 'package:check_games/src/screens/auth/register_screen.dart' as _i6;
import 'package:check_games/src/screens/game/game_screen.dart' as _i3;
import 'package:check_games/src/screens/home/home_screen.dart' as _i4;
import 'package:check_games/src/screens/splash/splash_screen.dart' as _i7;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.AuthScreen]
class AuthRoute extends _i8.PageRouteInfo<void> {
  const AuthRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthScreen();
    },
  );
}

/// generated route for
/// [_i2.ForgotPasswordScreen]
class ForgotPasswordRoute extends _i8.PageRouteInfo<void> {
  const ForgotPasswordRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.ForgotPasswordScreen();
    },
  );
}

/// generated route for
/// [_i3.GameScreen]
class GameRoute extends _i8.PageRouteInfo<GameRouteArgs> {
  GameRoute({
    _i9.Key? key,
    required _i10.AppGame game,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          GameRoute.name,
          args: GameRouteArgs(
            key: key,
            game: game,
          ),
          initialChildren: children,
        );

  static const String name = 'GameRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GameRouteArgs>();
      return _i3.GameScreen(
        key: args.key,
        game: args.game,
      );
    },
  );
}

class GameRouteArgs {
  const GameRouteArgs({
    this.key,
    required this.game,
  });

  final _i9.Key? key;

  final _i10.AppGame game;

  @override
  String toString() {
    return 'GameRouteArgs{key: $key, game: $game}';
  }
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.LoginScreen();
    },
  );
}

/// generated route for
/// [_i6.RegisterScreen]
class RegisterRoute extends _i8.PageRouteInfo<void> {
  const RegisterRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.RegisterScreen();
    },
  );
}

/// generated route for
/// [_i7.SplashScreen]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.SplashScreen();
    },
  );
}
