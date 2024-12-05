import 'package:auto_route/auto_route.dart';
import 'package:check_games/gen/assets.gen.dart';
import 'package:check_games/src/logic/cubits/users/users_cubit.dart';
import 'package:check_games/src/logic/models/app_game/app_game.dart';
import 'package:check_games/src/logic/models/app_user/app_user.dart';
import 'package:check_games/src/logic/repositories/user_repository.dart';
import 'package:check_games/src/logic/rules/basic_rules.dart';
import 'package:check_games/src/screens/game/checkgames.dart';
import 'package:check_games/src/screens/game/components/game_app_bar.dart';
import 'package:check_games/src/shared/components/sh_loader.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class GameScreen extends StatefulWidget {
  const GameScreen({super.key, required this.game});

  final AppGame game;

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(context.read<UserRepository>())
        ..getUsersByIds(widget.game.players),
      child: Scaffold(
        body: Container(
          height: ScreenUtil().screenHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.others.pokerBg.image().image,
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: BlocBuilder<UsersCubit, UsersState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const ShLoader(
                    color: Colors.white,
                  ),
                  usersLoaded: (users) {
                    final goodUsers = users.isEmpty
                        ? [
                            AppUser.cpu(),
                            AppUser.cpu()
                                .copyWith(id: 'cpu2', username: 'CPU 2'),
                          ]
                        : users.length == 1
                            ? users + [AppUser.cpu()]
                            : users;

                    return Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
                            vertical: 50,
                          ),
                          child: GameWidget(
                            game: Checkgames(
                              context: context,
                              game: widget.game,
                              users: goodUsers,
                              rules: BasicRules(),
                              onRestart: _onGameRestart,
                              onQuit: _onGameQuit,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GameAppBar(player: goodUsers.last),
                            GameAppBar(player: goodUsers.first),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _onGameRestart() {
    setState(() {});
  }

  void _onGameQuit() {
    context.router.maybePop();
  }
}
