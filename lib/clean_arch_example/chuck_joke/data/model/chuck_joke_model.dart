
import 'package:eweatlthbankingapp/clean_arch_example/chuck_joke/domain/model/chuck_joke_response_model.dart';

class ChuckJokeModel extends ChuckJoke {
  ChuckJokeModel({
    required String id,
    required String iconUrl,
    required String value,
  }) : super(id: id, iconUrl: iconUrl, value: value);

  factory ChuckJokeModel.fromJson(Map<String, dynamic> json) {
    return ChuckJokeModel(
      id: json['id'],
      iconUrl: json['icon_url'],
      value: json['value'],
    );
  }
}
