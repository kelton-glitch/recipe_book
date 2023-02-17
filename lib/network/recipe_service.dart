import 'dart:developer';

import 'package:http/http.dart';

const String apiKey = '<eaa762b2f7f5834eb1846314748a49e7>';
const String apiId = '<75f37b50>';
const String apiUrl = 'https://api.edamam.com/search';

class RecipeService {
  //1
  Future getData(String url) async {
    //2
    final response = await get(Uri.parse(url));
    //3
    if (response.statusCode == 200) {
      //4
      return response.body;
    } else {
      //5
      log(response.body);
    }
  }

//Add getRecipes
  Future<dynamic> getRecipes(String query, int from, int to) async {
    //2
    final recipeData = await getData(
        '$apiUrl? api_id=$apiId&app_key=$apiKey&q=$query&from=$from&to=$to');
    //3
    return recipeData;
  }
}
