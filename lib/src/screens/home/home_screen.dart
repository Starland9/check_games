import 'package:auto_route/annotations.dart';
import 'package:check_games/src/logic/rules/basic_rules.dart';
import 'package:check_games/src/screens/game/game_screen.dart';
import 'package:check_games/src/utils/common.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
