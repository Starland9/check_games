import 'package:check_games/src/checkgames.dart';
import 'package:check_games/src/rules/basic_rules.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

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
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                child: GameWidget(
                  game: Checkgames(
                    context: context,
                    rules: BasicRules(),
                    onGameOver: _onGameOver,
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
