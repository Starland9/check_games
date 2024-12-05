import 'package:auto_route/auto_route.dart';
import 'package:check_games/gen/assets.gen.dart';
import 'package:check_games/src/core/routes/app_router.gr.dart';
import 'package:check_games/src/logic/cubits/auth/auth_cubit.dart';
import 'package:check_games/src/logic/cubits/cards/cards_cubit.dart';
import 'package:check_games/src/logic/models/app_game/app_game.dart';
import 'package:check_games/src/logic/models/card/card.dart';
import 'package:check_games/src/logic/repositories/card_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart' hide Card;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ChooseVersusScreen extends StatelessWidget {
  const ChooseVersusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthCubit>().user!;

    return BlocProvider(
      create: (context) => CardsCubit(context.read<CardRepository>()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Choisir le mode de jeu"),
        ),
        body: Padding(
          padding: EdgeInsets.all(32.w),
          child: Column(
            children: [
              BlocBuilder<CardsCubit, CardsState>(
                builder: (context, state) {
                  final cards = context.read<CardsCubit>().getInitialCards();
                  return Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: ChooseVersusItem(
                            cards: cards,
                            leftItem: Assets.others.manUserSvgrepoCom.svg(),
                            rightItem: Assets.others.manUserSvgrepoCom.svg(),
                          ),
                        ),
                        SizedBox(height: 32.h),
                        Expanded(
                          child: ChooseVersusItem(
                            cards: cards,
                            leftItem: Assets.others.manUserSvgrepoCom.svg(),
                            rightItem: Assets.others.botSvgrepoCom.svg(
                              height: 200.h,
                            ),
                            game: AppGame(
                              id: DateTime.now().toString(),
                              players: [user.id],
                              hostId: user.id,
                              cards: cards,
                              createdAt: Timestamp.now(),
                            ),
                          ),
                        ),
                        SizedBox(height: 32.h),
                        Expanded(
                          child: ChooseVersusItem(
                            cards: cards,
                            leftItem: Assets.others.botSvgrepoCom.svg(
                              height: 200.h,
                            ),
                            rightItem: Assets.others.botSvgrepoCom.svg(
                              height: 200.h,
                            ),
                            game: AppGame(
                              id: DateTime.now().toString(),
                              players: [],
                              hostId: user.id,
                              cards: cards,
                              createdAt: Timestamp.now(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChooseVersusItem extends StatelessWidget {
  const ChooseVersusItem({
    super.key,
    required this.cards,
    this.game,
    required this.leftItem,
    required this.rightItem,
    this.color,
    this.onPressed,
  });

  final List<Card> cards;
  final AppGame? game;
  final Widget leftItem;
  final Widget rightItem;
  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () async {
        if (game != null) {
          await context.router.push(
            GameRoute(game: game!),
          );
        } else {
          onPressed?.call();
        }
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: leftItem),
          const Text('Versus'),
          Expanded(child: rightItem),
        ],
      ),
    );
  }
}
