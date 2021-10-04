import 'package:easy_drink/cocktail/domain/cocktail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'cocktail_dto.dart';

part 'response_dto.freezed.dart';
part 'response_dto.g.dart';

@freezed
class ResponseDTO with _$ResponseDTO {
  const ResponseDTO._();
  const factory ResponseDTO({
    List<CocktailDTO>? drinks,
  }) = _ResponseDTO;

  factory ResponseDTO.fromJson(Map<String, dynamic> json) => _$ResponseDTOFromJson(json);

  List<Cocktail>? toDomain() => drinks?.map((e) => e.toDomain()).toList();
}
