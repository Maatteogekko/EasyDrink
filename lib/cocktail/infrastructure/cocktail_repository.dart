import 'dart:convert';

import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:easy_drink/cocktail/domain/response_exception.dart';
import 'package:http/http.dart' as http;
import '/core/extensions/list_extension.dart';

import 'response_dto.dart';

class CocktailRepository {
  static const baseEndpoint = "https://www.thecocktaildb.com/api/json/v1/1";

  Future<Cocktail?> getRandomCocktail() async {
    final uri = Uri.parse(baseEndpoint + "/random.php");
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final cocktails = ResponseDTO.fromJson(json).toDomain();
      return cocktails?.first;
    } else {
      throw ResponseException(response.statusCode);
    }
  }

  Future<List<Cocktail>> getCocktailsByName(String name) async {
    final uri = Uri.parse(baseEndpoint + "/search.php?s=$name");
    final response = await http.get(uri);
    final List<Cocktail> cocktailList = [];
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final cocktails = ResponseDTO.fromJson(json).toDomain();
      cocktailList.addAllNotNull(cocktails);
    } else {
      throw ResponseException(response.statusCode);
    }

    return cocktailList;
  }

  Future<List<String>> getIngredients() async {
    final uri = Uri.parse(baseEndpoint + "/list.php?i=list");
    final response = await http.get(uri);
    final ingredientList = <String>[];
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      for (var value in (json['drinks'] as List<dynamic>)) {
        final ingredientMap = value as Map<String, dynamic>;
        ingredientList.add(ingredientMap.values.single as String);
      }
    } else {
      throw ResponseException(response.statusCode);
    }

    return ingredientList;
  }
}
