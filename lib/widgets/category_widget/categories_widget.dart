import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_call/widgets/category_widget/bloc/category_bloc.dart';
import 'package:games_call/widgets/category_widget/categories_success_widget.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        return const CategoriesSuccessWidget();
      },
    );
  }
}
