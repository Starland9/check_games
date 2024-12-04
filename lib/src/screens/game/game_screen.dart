import 'package:auto_route/auto_route.dart';
import 'package:check_games/gen/assets.gen.dart';
import 'package:check_games/src/logic/cubits/users/users_cubit.dart';
import 'package:check_games/src/logic/models/app_game/app_game.dart';
import 'package:check_games/src/logic/repositories/user_repository.dart';
import 'package:check_games/src/logic/rules/basic_rules.dart';
import 'package:check_games/src/screens/game/checkgames.dart';
import 'package:check_games/src/shared/components/sh_loader.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class GameScreen extends StatelessWidget {
  const GameScreen({super.key, required this.game});

  final AppGame game;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsersCubit(context.read<UserRepository>())
        ..getUsersByIds(game.players),
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
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: BlocBuilder<UsersCubit, UsersState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const ShLoader(
                      color: Colors.white,
                    ),
                    usersLoaded: (users) {
                      return GameWidget(
                        game: Checkgames(
                          context: context,
                          game: game,
                          users: users,
                          rules: BasicRules(),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
