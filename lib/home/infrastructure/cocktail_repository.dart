import 'dart:convert';

import 'package:easy_drink/home/domain/cocktail.dart';
import 'package:easy_drink/home/infrastructure/response_dto.dart';
import 'package:http/http.dart' as http;

class CocktailRepository {
  static const baseEndpoint = "https://www.thecocktaildb.com/api/json/v1/1";

  Future<List<Cocktail>?> getCocktailByName(String name) async {
    final uri = Uri.parse(baseEndpoint + "/search.php?s=$name");
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return ResponseDTO.fromJson(json).toDomain();
    } else {
      // TODO handle failure
      return null;
    }
  }
}
