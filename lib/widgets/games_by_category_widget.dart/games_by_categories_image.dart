import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:games_call/widgets/games_by_category_widget.dart/games_by_category_title.dart';

class GameByCategoryImage extends StatelessWidget {
  final String name;
  final String backgroundImage;
  const GameByCategoryImage({super.key, required this.name, required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: backgroundImage,
      imageBuilder: (context, imageProvider) => Stack(
        children: [
          Container(
            width: 270.0,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20.0,
              ),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(
                  Colors.black45,
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 18.0,
            child: GameByCategoryTitle(
              name: name,
            ),
          ),
        ],
      ),
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(),
      ),
      errorWidget: (context, url, error) => const Icon(
        Icons.error,
        color: Colors.deepOrangeAccent,
      ),
    );
 
  }
}