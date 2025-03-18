// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDTOImpl _$$ResponseDTOImplFromJson(Map<String, dynamic> json) =>
    _$ResponseDTOImpl(
      drinks: (json['drinks'] as List<dynamic>?)
          ?.map((e) => CocktailDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseDTOImplToJson(_$ResponseDTOImpl instance) =>
    <String, dynamic>{
      'drinks': instance.drinks?.map((e) => e.toJson()).toList(),
    };
