// import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:games_call/repository/models/all_games.dart';

part 'all_games_event.dart';
part 'all_games_state.dart';

class AllGamesBloc extends Bloc<AllGamesEvent, AllGamesState> {
  AllGamesBloc() : super(AllGamesState()) {
    on<AllGamesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
