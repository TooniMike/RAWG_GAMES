import 'package:flutter/material.dart';
import 'package:games_call/widgets/all_games_widgets/all_games_widgets.dart';
import 'package:games_call/widgets/category_widget/categories_widget.dart';
import 'package:games_call/widgets/container_body.dart';

import '../../widgets/header.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 80.0),
      child: Column(
        children: [
          Header(),
          SizedBox(height: 40.0),
          ContainerBody(
            children: [
              CategoriesWidget(),
              AllGamesWidget(title: 'All games'),
            ],
          )
        ],
      ),
    );
  }
}
