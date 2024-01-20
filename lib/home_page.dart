import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_call/repository/game_repository.dart';
import 'package:games_call/repository/services/services.dart';
import 'package:games_call/widgets/category_widget/bloc/category_bloc.dart';
import 'package:games_call/widgets/category_widget/categories_widget.dart';

import 'widgets/container_body.dart';
import 'widgets/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Column(
          children: [
            const Header(),
            const SizedBox(height: 40),
            ContainerBody(
              children: [
                RepositoryProvider(
                  create: (context) => GameRepository(service: GameServices()),
                  child: BlocProvider<CategoryBloc>(
                    create: (context) => CategoryBloc(
                      gameRepository: context.read<GameRepository>(),
                    )..add(GetCategories()),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: CategoriesWidget(),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
