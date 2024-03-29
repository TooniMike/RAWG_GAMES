import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:games_call/repository/game_repository.dart';
import 'package:games_call/repository/models/genre.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GameRepository gameRepository;
  CategoryBloc({required this.gameRepository}) : super(const CategoryState()) {
    // on<CategoryEvent>((event, emit) {
    // });

    on<GetCategories>(_mapGetCategoriesEventToState);
    on<SelectCategory>(_mapSelectCategoryEventToState);
  }

  void _mapGetCategoriesEventToState(
      GetCategories event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(status: CategoryStatus.loading));
    try {
      final genres = await gameRepository.getGenres();
      emit(
        state.copyWith(
          status: CategoryStatus.success,
          categories: genres,
        ),
      );
    } catch (error, stacktrace) {
      print(stacktrace);
      emit(state.copyWith(status: CategoryStatus.error));
    }
  }

void _mapSelectCategoryEventToState (SelectCategory event, Emitter<CategoryState> emit) async {
  emit(state.copyWith(
    status: CategoryStatus.selected,
    idSelected: event.idSelected,
  ));
}

}
