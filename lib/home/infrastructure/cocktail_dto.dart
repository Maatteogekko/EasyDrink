import 'package:easy_drink/home/domain/cocktail.dart';
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
    required String strInstructionsIT,
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

  Cocktail toDomain() {
    final List<String> ingredients = []..addAllNotNull([
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
      ]);

    final List<String> measures = []..addAllNotNull([
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
      ]);

    return Cocktail(
      id: idDrink,
      name: strDrink,
      category: strCategory,
      alchoholic: strAlcoholic,
      instructions: strInstructionsIT,
      ingredients: ingredients,
      measures: measures,
      imageUri: strDrinkThumb,
    );
  }
}
