// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResponseDTO _$$_ResponseDTOFromJson(Map<String, dynamic> json) =>
    _$_ResponseDTO(
      drinks: (json['drinks'] as List<dynamic>?)
          ?.map((e) => CocktailDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ResponseDTOToJson(_$_ResponseDTO instance) =>
    <String, dynamic>{
      'drinks': instance.drinks?.map((e) => e.toJson()).toList(),
    };
