import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/domain/model/chuck_joke_response_model.dart';

//contrcat with our method.
//in here we expect our response model or failure
abstract class ChuckJokeRepository {
  ///here we are creating the getJoke method
  ///we expect future either failure or unit of the response model
  ///
  /// we create our contract and we define our method
  Future<ChuckJoke> getRandomJoke();
}