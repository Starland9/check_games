import 'package:auto_route/auto_route.dart';
import 'package:check_games/gen/assets.gen.dart';
import 'package:check_games/src/core/routes/app_router.gr.dart';
import 'package:check_games/src/logic/cubits/auth/auth_cubit.dart';
import 'package:check_games/src/logic/cubits/cards/cards_cubit.dart';
import 'package:check_games/src/logic/models/app_game/app_game.dart';
import 'package:check_games/src/logic/repositories/card_repository.dart';
import 'package:check_games/src/screens/auth/components/auth_logo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    final user = context.read<AuthCubit>().user!;
    return BlocProvider(
      create: (context) => CardsCubit(context.read<CardRepository>()),
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Assets.others.pokerBg.image().image,
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(),
              const AuthLogo(),
              const Text(
                "Cartomania",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 32.h),
              BlocBuilder<CardsCubit, CardsState>(
                builder: (context, state) {
                  return FilledButton(
                    onPressed: () async {
                      final cards =
                          context.read<CardsCubit>().getInitialCards();

                      await context.router.push(
                        GameRoute(
                          game: AppGame(
                            id: "0",
                            players: [user.id],
                            hostId: user.id,
                            cards: cards,
                            createdAt: Timestamp.now(),
                          ),
                        ),
                      );
                    },
                    child: const Text("Jouer"),
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
