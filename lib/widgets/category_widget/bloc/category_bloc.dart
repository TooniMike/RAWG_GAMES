import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:games_call/repository/game_repository.dart';
import 'package:games_call/repository/models/genre.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GameRepository gameRepository;
  CategoryBloc({required this.gameRepository}) : super(CategoryState()) {
    on<CategoryEvent>((event, emit) {

    });
  }
}
