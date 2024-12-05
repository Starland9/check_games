import 'package:check_games/src/logic/models/app_user/app_user.dart';
import 'package:flutter/material.dart';

class GameAppBar extends StatelessWidget {
  const GameAppBar({
    super.key,
    required this.player,
  });

  final AppUser player;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black.withOpacity(0.2),
      title: Text(player.username),
      foregroundColor: Colors.white,
    );
  }
}
