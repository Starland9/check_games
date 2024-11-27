import 'package:check_games/src/checkgames.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Checkgames(context: context).backgroundColor(),
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
              child: GameWidget(
                game: Checkgames(
                  context: context,
                  onGameOver: () => setState(() {}),
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
