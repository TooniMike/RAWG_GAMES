import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_call/widgets/error_widgets.dart';

import 'all_games_success_widget.dart';
import 'bloc/all_games_bloc.dart';

class AllGamesWidget extends StatelessWidget {
  final String title;
  const AllGamesWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllGamesBloc, AllGamesState>(
      builder: (context, state) {
        return state.status.isSuccess
            ? AllGamesSuccessWidget(
                title: title,
                games: state.games.results,
              )
            : state.status.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state.status.isError
                    ? const ErrorGameWidget()
                    : const SizedBox();
      },
    );
  }
}