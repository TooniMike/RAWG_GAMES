part of 'all_games_bloc.dart';

sealed class AllGamesEvent extends Equatable {
  const AllGamesEvent();

  @override
  List<Object> get props => [];
}

class GetAllGamesEvent extends AllGamesEvent{}
