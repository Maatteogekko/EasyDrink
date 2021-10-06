import 'package:easy_drink/cocktail/domain/alcoholic.dart';
import 'package:easy_drink/cocktail/domain/category.dart';
import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/core/extensions/list_extension.dart';

part 'cocktail_dto.freezed.dart';
part 'cocktail_dto.g.dart';

@freezed
class CocktailDTO with _$CocktailDTO {
  const CocktailDTO._();
  const factory CocktailDTO({
    required String idDrink,
    required String strDrink,
    required Category strCategory,
    required Alcoholic strAlcoholic,
    required String strInstructions,
    required String? strInstructionsIT,
    required String strDrinkThumb,
    String? strIngredient1,
    String? strIngredient2,
    String? strIngredient3,
    String? strIngredient4,
    String? strIngredient5,
    String? strIngredient6,
    String? strIngredient7,
    String? strIngredient8,
    String? strIngredient9,
    String? strIngredient10,
    String? strIngredient11,
    String? strIngredient12,
    String? strIngredient13,
    String? strIngredient14,
    String? strIngredient15,
    String? strMeasure1,
    String? strMeasure2,
    String? strMeasure3,
    String? strMeasure4,
    String? strMeasure5,
    String? strMeasure6,
    String? strMeasure7,
    String? strMeasure8,
    String? strMeasure9,
    String? strMeasure10,
    String? strMeasure11,
    String? strMeasure12,
    String? strMeasure13,
    String? strMeasure14,
    String? strMeasure15,
  }) = _CocktailDTO;

  factory CocktailDTO.fromJson(Map<String, dynamic> json) => _$CocktailDTOFromJson(json);

  factory CocktailDTO.fromDomain(Cocktail _) {
    return CocktailDTO(
      idDrink: _.id,
      strDrink: _.name,
      strCategory: _.category,
      strAlcoholic: _.alchoholic,
      strInstructions: _.instructions,
      strInstructionsIT: _.instructions,
      strDrinkThumb: _.imageUri,
      strIngredient1: _.ingredients.safeGet(0),
      strIngredient2: _.ingredients.safeGet(1),
      strIngredient3: _.ingredients.safeGet(2),
      strIngredient4: _.ingredients.safeGet(3),
      strIngredient5: _.ingredients.safeGet(4),
      strIngredient6: _.ingredients.safeGet(5),
      strIngredient7: _.ingredients.safeGet(6),
      strIngredient8: _.ingredients.safeGet(7),
      strIngredient9: _.ingredients.safeGet(8),
      strIngredient10: _.ingredients.safeGet(9),
      strIngredient11: _.ingredients.safeGet(10),
      strIngredient12: _.ingredients.safeGet(11),
      strIngredient13: _.ingredients.safeGet(12),
      strIngredient14: _.ingredients.safeGet(13),
      strIngredient15: _.ingredients.safeGet(14),
      strMeasure1: _.measures.safeGet(0),
      strMeasure2: _.measures.safeGet(1),
      strMeasure3: _.measures.safeGet(2),
      strMeasure4: _.measures.safeGet(3),
      strMeasure5: _.measures.safeGet(4),
      strMeasure6: _.measures.safeGet(5),
      strMeasure7: _.measures.safeGet(6),
      strMeasure8: _.measures.safeGet(7),
      strMeasure9: _.measures.safeGet(8),
      strMeasure10: _.measures.safeGet(9),
      strMeasure11: _.measures.safeGet(10),
      strMeasure12: _.measures.safeGet(11),
      strMeasure13: _.measures.safeGet(12),
      strMeasure14: _.measures.safeGet(13),
      strMeasure15: _.measures.safeGet(14),
    );
  }

  Cocktail toDomain() {
    final List<String> ingredients = []
      ..addAllNotNull([
        strIngredient1,
        strIngredient2,
        strIngredient3,
        strIngredient4,
        strIngredient5,
        strIngredient6,
        strIngredient7,
        strIngredient8,
        strIngredient9,
        strIngredient10,
        strIngredient11,
        strIngredient12,
        strIngredient13,
        strIngredient14,
        strIngredient15,
      ])
      ..removeWhere((element) => element.isEmpty);

    final List<String> measures = []
      ..addAllNotNull([
        strMeasure1,
        strMeasure2,
        strMeasure3,
        strMeasure4,
        strMeasure5,
        strMeasure6,
        strMeasure7,
        strMeasure8,
        strMeasure9,
        strMeasure10,
        strMeasure11,
        strMeasure12,
        strMeasure13,
        strMeasure14,
        strMeasure15,
      ])
      ..removeWhere((element) => element.isEmpty);

    return Cocktail(
      id: idDrink,
      name: strDrink,
      category: strCategory,
      alchoholic: strAlcoholic,
      instructions: strInstructionsIT ?? strInstructions,
      ingredients: ingredients,
      measures: measures,
      imageUri: strDrinkThumb,
    );
  }
}
