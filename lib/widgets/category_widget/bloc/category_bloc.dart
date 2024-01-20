import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:games_call/repository/game_repository.dart';
import 'package:games_call/repository/models/genre.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GameRepository gameRepository;
  CategoryBloc({required this.gameRepository}) : super(const CategoryState()) {
    // on<CategoryEvent>((event, emit) {

    // });

    on<GetCategories> (_mapGetCategoriesEventToState);
  }

    void _mapGetCategoriesEventToState(GetCategories event, Emitter<CategoryState> emit)async{
      emit(state.copyWith(status: CategoryStatus.loading));
     try {
      final genres = await gameRepository.getGenres();
      emit(
        state.copyWith(
          status: CategoryStatus.success,
          categories: genres,
        ),
      );
    } catch (erroe, stacktrace) {
      print(stacktrace);
      emit(state.copyWith(status: CategoryStatus.error));
    }
  }
}
