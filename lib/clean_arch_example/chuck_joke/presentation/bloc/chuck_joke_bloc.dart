import 'package:bloc/bloc.dart';
import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/domain/model/chuck_joke_response_model.dart';
import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/domain/repo/chuck_joke_repo.dart';
import 'package:meta/meta.dart';

part 'chuck_joke_event.dart';
part 'chuck_joke_state.dart';

class ChuckJokeBloc extends Bloc<ChuckJokeEvent, ChuckJokeState> {
  final ChuckJokeRepository repository;

  ChuckJokeBloc(this.repository) : super(ChuckJokeState.initial()) {
    on<GetChuckJokeEvent>((event, emit) async {
      emit(state.copyWith(status: ChuckJokeStatus.loading));
      try {
        final ChuckJoke joke = await repository.getRandomJoke();
        emit(state.copyWith(
          status: ChuckJokeStatus.loaded,
          joke: joke,
          errorMessage: null,
        ));
      } catch (_) {
        emit(state.copyWith(
          status: ChuckJokeStatus.error,
          errorMessage: 'Failed to fetch Chuck Norris joke.',
        ));
      }
    });
  }
}