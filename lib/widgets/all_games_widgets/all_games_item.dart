import 'package:flutter/material.dart';
import 'package:games_call/repository/models/results.dart';
import 'package:games_call/widgets/all_games_widgets/all_games_item_rating.dart';

import 'all_games_item_button.dart';
import 'all_games_item_image.dart';

class AllGamesItem extends StatelessWidget {
  final Results game;
  const AllGamesItem({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey.withOpacity(.1),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20.0,
            top: 15.0,
            bottom: 15.0,
            child: AllGamesItemImage(
              backgroundImage: game.backgroundImage ?? '',
            ),
          ),
          Positioned(
            top: 25.0,
            left: 100.0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Text(
                game.name ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Positioned(
            left: 100.0,
            top: 45.0,
            child: Text(
              game.genres?.first.name ?? '',
              style: const TextStyle(
                fontSize: 12.0,
              ),
            ),
          ),
          Positioned(
            top: 65.0,
            left: 100.0,
            child: AllGamesItemRating(
              rating: game.rating ?? 0.0,
            ),
          ),
          Positioned(
            right: 20.0,
            bottom: 10.0,
            child: AllGamesItemButton(
              callback: () {
                print('item name-->${game.name}');
              },
            ),
          ),
        ],
      ),
    );
  
  }
}