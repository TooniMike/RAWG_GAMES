import 'package:flutter/widgets.dart';
import 'package:games_call/repository/models/results.dart';
import 'package:games_call/widgets/games_by_category_widget.dart/games_by_categories_image.dart';

class GamesByCategorySuccess extends StatelessWidget {
  final String categoryName;
  final List<Results> games;
  const GamesByCategorySuccess(
      {super.key, required this.categoryName, required this.games});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(left: 25, bottom: 16),
        child: Text(
          categoryName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * .2,
        child: ListView.separated(
            itemBuilder: (context, index) {
              return GameByCategoryImage(
                  name: games[index].name ?? 'No data',
                  backgroundImage: games[index].backgroundImage ?? '');
            },
            separatorBuilder: (_, __) => const SizedBox(width: 25.0),
            itemCount: games.length),
      )
    ]);
  }
}
