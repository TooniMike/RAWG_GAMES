part of 'all_games_bloc.dart';

sealed class AllGamesState extends Equatable {
  const AllGamesState();
  
  @override
  List<Object> get props => [];
}

final class AllGamesInitial extends AllGamesState {}
