// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyType _$PropertyTypeFromJson(Map<String, dynamic> json) {
  return PropertyType(
    id: json['id'] as int,
    name: json['name'] as String,
    propertyType: json['propertyType'] as int,
  );
}

Map<String, dynamic> _$PropertyTypeToJson(PropertyType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'propertyType': instance.propertyType,
    };
