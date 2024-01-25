import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_call/repository/models/result_error.dart';
import 'package:games_call/widgets/games_by_category_widget.dart/bloc/games_by_category_bloc.dart';
import 'package:games_call/widgets/games_by_category_widget.dart/games_by_categories_success.dart';

class GamesByCategory extends StatelessWidget {
  const GamesByCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GamesByCategoryBloc, GamesByCategoryState>(
      builder: (context, state){
        return state.status.isSuccess ? GamesByCategorySuccess(
          categoryName: state.categoryName,
          games: state.games,
        ) : state.status.isLoading ? const Center(child: CircularProgressIndicator(),) :state.status.isError ? ErrorGameWidget()
      }
    )
  }
}