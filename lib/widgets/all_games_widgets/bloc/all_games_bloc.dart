import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:games_call/repository/game_repository.dart';
import 'package:games_call/repository/models/all_games.dart';

part 'all_games_event.dart';
part 'all_games_state.dart';

class AllGamesBloc extends Bloc<AllGamesEvent, AllGamesState> {
  final GameRepository gameRepository;
  AllGamesBloc({
    required this.gameRepository}
  ) : super(AllGamesState()) {
    // on<AllGamesEvent>((event, emit) {
    //   // TODO: implement event handler
    // });
    on<GetAllGamesEvent>(_mapGetGamesEventToState);
  }

  void _mapGetGamesEventToState(
      GetAllGamesEvent event, Emitter<AllGamesState> emit) async {
    try {
      emit(state.copyWith(status: AllGamesStatus.loading));
      final games = await gameRepository.getAllGames();
      emit(state.copyWith(status: AllGamesStatus.success, games: games));
    } catch (error) {
      emit(state.copyWith(status: AllGamesStatus.error));
    }
  }
}
