import 'package:check_games/src/checkgames.dart';
import 'package:check_games/src/models/rules.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final Rules basicRules;

  @override
  void initState() {
    basicRules = Rules();
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
                    onGameOver: () => setState(() {}),
                    rules: basicRules,
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
}
