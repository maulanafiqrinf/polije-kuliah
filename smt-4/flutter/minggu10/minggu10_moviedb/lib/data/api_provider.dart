import 'dart:convert';

import 'package:http/http.dart' show Client, Response;
import 'package:minggu10_moviedb/model/popular_movies.dart';

class ApiProvider {
  String apiKey = 'ba8a4d0343524c707fd60d110a9e0f9d';
  String baseUrl = 'https://api.themoviedb.org/3';

  Client client = Client();

  Future<PopularMovies> getPopularMovies() async {
    // String url = '$baseUrl/movie/popular?api_key=$apiKey';
    // print(url);
    Response response =
        await client.get('$baseUrl/movie/popular?api_key=$apiKey');

    if (response.statusCode == 200) {
      return PopularMovies.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.statusCode);
    }
  }
}
