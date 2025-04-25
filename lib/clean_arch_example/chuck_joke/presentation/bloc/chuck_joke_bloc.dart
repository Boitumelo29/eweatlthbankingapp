import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'chuck_joke_event.dart';
part 'chuck_joke_state.dart';

class ChuckJokeBloc extends Bloc<ChuckJokeEvent, ChuckJokeState> {
  ChuckJokeBloc() : super(ChuckJokeInitial()) {
    on<ChuckJokeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
