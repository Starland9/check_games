import 'dart:async';

import 'package:check_games/src/screens/game_screen.dart';
import 'package:check_games/src/screens/splash_screen.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart' hide Route;

class Checkgames extends FlameGame with TapDetector {
  final BuildContext context;

  Checkgames({required this.context});

  @override
  Color backgroundColor() => const Color(0xff008080);

  late final RouterComponent router;

  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();

    router = RouterComponent(
      initialRoute: "game",
      routes: {
        "splash": Route(() => SplashScreen()),
        "game": Route(() => GameScreen(context: context)),
      },
    );
    await add(router);

    return super.onLoad();
  }

  @override
  void onRemove() {
    images.clearCache();
    super.onRemove();
  }
}
