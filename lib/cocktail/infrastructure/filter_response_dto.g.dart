// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterResponseDTO _$$_FilterResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_FilterResponseDTO(
      drinks: (json['drinks'] as List<dynamic>?)
          ?.map((e) => CocktailFilterDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FilterResponseDTOToJson(
        _$_FilterResponseDTO instance) =>
    <String, dynamic>{
      'drinks': instance.drinks?.map((e) => e.toJson()).toList(),
    };
