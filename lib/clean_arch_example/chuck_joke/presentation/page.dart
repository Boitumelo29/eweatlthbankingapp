import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/data/remote_source/chuck_joke_remote_data_source.dart';
import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/data/repo/chuck_joke_repository_impl.dart';
import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/presentation/bloc/chuck_joke_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

class ChuckJokePage extends StatelessWidget {
  const ChuckJokePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chuck Norris Jokes')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<ChuckJokeBloc, ChuckJokeState>(
          builder: (context, state) {
            switch (state.status) {
              case ChuckJokeStatus.loading:
                return const Center(child: CircularProgressIndicator());

              case ChuckJokeStatus.loaded:
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(state.joke!.iconUrl, height: 100),
                    const SizedBox(height: 16),
                    Text(state.joke!.value, textAlign: TextAlign.center),
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {
                        context.read<ChuckJokeBloc>().add(GetChuckJokeEvent());
                      },
                      child: const Text('Get Another Joke'),
                    ),
                  ],
                );

              case ChuckJokeStatus.error:
                return Center(child: Text(state.errorMessage ?? 'Error'));

              case ChuckJokeStatus.initial:
              default:
                return Center(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<ChuckJokeBloc>().add(GetChuckJokeEvent());
                    },
                    child: const Text('Get a Chuck Norris Joke'),
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final client = http.Client();
    final remoteDataSource = ChuckJokeRemoteDataSourceImpl(client);
    final repository = ChuckJokeRepositoryImpl(remoteDataSource);

    return MaterialApp(
      home: BlocProvider(
        create: (context) => ChuckJokeBloc(repository),
        child: const ChuckJokePage(),
      ),
    );
  }
}
