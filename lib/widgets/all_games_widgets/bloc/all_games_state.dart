part of 'all_games_bloc.dart';

enum AllGamesStatus {
  initial,
  success,
  loading,
  error,
  selected,
}

extension AllGamesStatusX on AllGamesStatus {
  bool get isInitial => this == AllGamesStatus.initial;
  bool get isSuccess => this == AllGamesStatus.success;
  bool get isLoading => this == AllGamesStatus.loading;
  bool get isError => this == AllGamesStatus.error;
  bool get isSelected => this == AllGamesStatus.selected;
}

 class AllGamesState extends Equatable {
  final AllGames games;
  final AllGamesStatus status;

  AllGamesState({this.status = AllGamesStatus.initial, AllGames? games})
      : games = games ?? AllGames.empty;

  @override
  List<Object> get props => [status, games];

  AllGamesState copyWith({
    AllGames? games,
    AllGamesStatus? status,
  }) {
    return AllGamesState(
      games: games ?? this.games,
      status: status ?? this.status,
    );
  }

  //   AllGamesState copyWith({
  //   AllGames? games,
  //   AllGamesStatus? status,
  // }) {
  //   return AllGamesState(
  //     games: games ?? this.games,
  //     status: status ?? this.status,
  //   );
  // }
}

// final class AllGamesInitial extends AllGamesState {}
