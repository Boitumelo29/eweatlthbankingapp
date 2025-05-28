import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/domain/model/chuck_joke_response_model.dart';
import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/domain/repo/chuck_joke_repo.dart';

//we have our usecase
//we avoid using it
//but it basically calls our repos method
class GetRandomJoke {
  final ChuckJokeRepository repository;

  GetRandomJoke(this.repository);

  /// here we call the response model
  Future<ChuckJoke> call() async {
    return await repository.getRandomJoke();
  }
}