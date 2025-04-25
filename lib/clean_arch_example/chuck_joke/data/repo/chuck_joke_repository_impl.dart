import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/data/remote_source/chuck_joke_remote_data_source.dart';
import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/domain/model/chuck_joke_response_model.dart';
import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/domain/repo/chuck_joke_repo.dart';

//our data repo implemnts our main repo
class ChuckJokeRepositoryImpl implements ChuckJokeRepository {
  ///here is where implement the data soucce into our data repo
  final ChuckJokeRemoteDataSource remoteDataSource;

  ChuckJokeRepositoryImpl(this.remoteDataSource);

  @override
  Future<ChuckJoke> getRandomJoke() async {
    return await remoteDataSource.getRandomJoke();
  }
}