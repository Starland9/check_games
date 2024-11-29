import 'dart:io';

import 'package:check_games/src/checkgames.dart';
import 'package:check_games/src/rules/basic_rules.dart';
import 'package:flame/game.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

bool isDesktop() {
  if (kIsWeb) return true;
  return Platform.isMacOS || Platform.isWindows || Platform.isLinux;
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Checkgames(
        context: context,
      ).backgroundColor(),
      // appBar: AppBar(
      //   title: const Text('Check Games'),
      //   backgroundColor: Checkgames().backgroundColor(),
      //   centerTitle: true,
      //   automaticallyImplyLeading: false,
      //   foregroundColor: Colors.white,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: isDesktop() ? 800 : null,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(),
                child: Center(
                  child: GameWidget(
                    game: Checkgames(
                      context: context,
                      rules: BasicRules(),
                      onGameOver: _onGameOver,
                    ),
                  ),
                ),
              ),
            ),
            // const SizedBox(height: 16),
            // FilledButton(
            //   child: const Text('Start'),
            //   onPressed: () {},
            // ),
          ],
        ),
      ),
    );
  }

  void _onGameOver() {
    setState(() {});
  }
}
