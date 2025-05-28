///we start with the response model
///her we are defining the response model, here we are defining what we are looking for.
///it is the outline of what we are expecting from our API, its the model of our api
class ChuckJoke {
  final String id;
  final String iconUrl;
  final String value;

  ChuckJoke({
    required this.id,
    required this.iconUrl,
    required this.value,
  });
}
