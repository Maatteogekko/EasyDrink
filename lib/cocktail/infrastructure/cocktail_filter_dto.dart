import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktail_filter_dto.freezed.dart';
part 'cocktail_filter_dto.g.dart';

@freezed
class CocktailFilterDTO with _$CocktailFilterDTO {
  const factory CocktailFilterDTO({
    required String idDrink,
    required String strDrink,
    required String strDrinkThumb,
  }) = _CocktailFilterDTO;

  factory CocktailFilterDTO.fromJson(Map<String, dynamic> json) =>
      _$CocktailFilterDTOFromJson(json);
}
