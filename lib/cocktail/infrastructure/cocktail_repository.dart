import 'dart:convert';

import 'package:easy_drink/cocktail/domain/alcoholic.dart';
import 'package:easy_drink/cocktail/domain/category.dart';
import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:http/http.dart' as http;
import '/core/extensions/list_extension.dart';

import 'cocktail_filter_dto.dart';
import 'filter_response_dto.dart';
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
      // TODO handle failure
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
      // TODO handle failure
    }

    return cocktailList;
  }

  Stream<Cocktail?> getCocktailsByIngredient(String ingredientName) async* {
    final uri = Uri.parse(baseEndpoint + "/filter.php?i=$ingredientName");
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      // IMPROVE extract
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final drinksList = FilterResponseDTO.fromJson(json).drinks;
      if (drinksList != null) {
        for (var dto in drinksList) {
          yield await _getCocktailFromId(dto.idDrink);
        }
      }
    } else {
      // TODO handle failure
    }
  }

  Future<List<Cocktail>> getCocktailsByAlcoholic(Alcoholic alcoholic) async {
    final uri = Uri.parse(baseEndpoint + "/filter.php?a=${alcoholic.value}");
    final response = await http.get(uri);
    final List<Cocktail> cocktailList = [];
    if (response.statusCode == 200) {
      // IMPROVE extract
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final drinksList = FilterResponseDTO.fromJson(json).drinks;

      cocktailList.addAllNotNull(await _drinksToCoktails(drinksList));
    } else {
      // TODO handle failure
    }

    return cocktailList;
  }

  Future<List<Cocktail>> getCocktailsByCategory(Category category) async {
    final uri = Uri.parse(baseEndpoint + "/filter.php?a=${category.value}");
    final response = await http.get(uri);
    final List<Cocktail> cocktailList = [];
    if (response.statusCode == 200) {
      // IMPROVE extract
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      final drinksList = FilterResponseDTO.fromJson(json).drinks;

      cocktailList.addAllNotNull(await _drinksToCoktails(drinksList));
    } else {
      // TODO handle failure
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
      // TODO handle failure
    }

    return ingredientList;
  }

  Future<Cocktail?> _getCocktailFromId(String id) async {
    final uri = Uri.parse(baseEndpoint + "/lookup.php?i=$id");
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return ResponseDTO.fromJson(json).toDomain()?.single;
    } else {
      // TODO handle failure
      return null;
    }
  }

  Future<List<Cocktail>> _drinksToCoktails(List<CocktailFilterDTO>? drinksList) async {
    final List<Cocktail> cocktailList = [];

    if (drinksList != null) {
      for (var drink in drinksList) {
        final cocktail = await _getCocktailFromId(drink.idDrink);
        cocktailList.addNotNull(cocktail);
      }
    }

    return cocktailList;
  }
}
