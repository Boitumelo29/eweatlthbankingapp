part of 'chuck_joke_bloc.dart';

enum ChuckJokeStatus { initial, loading, loaded, error }

class ChuckJokeState {
  final ChuckJokeStatus status;
  final ChuckJoke? joke;
  final String? errorMessage;

  const ChuckJokeState({
    this.status = ChuckJokeStatus.initial,
    this.joke,
    this.errorMessage,
  });

  ChuckJokeState copyWith({
    ChuckJokeStatus? status,
    ChuckJoke? joke,
    String? errorMessage,
  }) {
    return ChuckJokeState(
      status: status ?? this.status,
      joke: joke ?? this.joke,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  factory ChuckJokeState.initial() {
    return const ChuckJokeState();
  }
}
