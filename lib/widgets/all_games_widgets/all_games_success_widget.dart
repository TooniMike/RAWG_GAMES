import 'package:flutter/material.dart';
import 'package:games_call/repository/models/results.dart';
import 'package:games_call/widgets/all_games_widgets/all_games_item.dart';

class AllGamesSuccessWidget extends StatelessWidget {
  final List<Results> games;
  final String title;
  const AllGamesSuccessWidget({
    Key? key,
    required this.games,
    required this.title,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
        SizedBox(
          height:
              ((100 * games.length) + MediaQuery.of(context).size.width) + 24.0,
          child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24.0,
              top: 24.0,
            ),
            itemBuilder: (context, index) {
              return AllGamesItem(
                game: games[index],
              );
            },
            separatorBuilder: (_, __) => const SizedBox(
              height: 20.0,
            ),
            itemCount: games.length,
          ),
        ),
      ],
    );
  }
}
