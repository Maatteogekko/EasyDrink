import 'package:freezed_annotation/freezed_annotation.dart';

import 'cocktail_filter_dto.dart';

part 'filter_response_dto.freezed.dart';
part 'filter_response_dto.g.dart';

@freezed
class FilterResponseDTO with _$FilterResponseDTO {
  const factory FilterResponseDTO({
    required List<CocktailFilterDTO>? drinks,
  }) = _FilterResponseDTO;

  factory FilterResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$FilterResponseDTOFromJson(json);
}
