import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_call/repository/game_repository.dart';
import 'package:games_call/repository/home/home_layout.dart';
import 'package:games_call/repository/services/services.dart';
import 'package:games_call/widgets/all_games_widgets/bloc/all_games_bloc.dart';
import 'package:games_call/widgets/category_widget/bloc/category_bloc.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: RepositoryProvider(
        create: (context) => GameRepository(service: GameServices()),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<AllGamesBloc>(
              create: (context) => AllGamesBloc(
                gameRepository: context.read<GameRepository>(),
              )..add(GetAllGamesEvent()),
            ),
            BlocProvider<CategoryBloc>(
              create: (context) => CategoryBloc(
                gameRepository: context.read<GameRepository>(),
              )..add(GetCategories()),
            ),
          ], child: const HomeLayout(),

        ),
      ),
    );
  }
}
