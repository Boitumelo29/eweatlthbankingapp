import 'dart:convert';
import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/data/model/chuck_joke_model.dart';
import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/data/repo/chuck_joke_repository_impl.dart';
import 'package:http/http.dart' as http;

///here is the abstract class I skipped
/// NB this one is the one that we conncet to the repo!!!
///
/// here we have a contract thatwe are going to implemnt with our repo, so this is the contract between the impl and the repo
abstract class ChuckJokeRemoteDataSource {
  //we have a method as well
  Future<ChuckJokeModel> getRandomJoke();
}

//then we implemnt into our data source
//this repo implments the remote sourece repo which implemenets the main repo

///here we have our data source implementation with impl,ments our data abstract class
class ChuckJokeRemoteDataSourceImpl implements ChuckJokeRemoteDataSource {
  ///here we would call the  ChuckJokeRepositoryImpl
  final http.Client client;

  ChuckJokeRemoteDataSourceImpl(this.client);

  @override
  Future<ChuckJokeModel> getRandomJoke() async {
    final response = await client.get(
      Uri.parse('https://api.chucknorris.io/jokes/random'),
    );

    if (response.statusCode == 200) {
      ///helps us decode the fromJson
      return ChuckJokeModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load joke');
    }
  }
}