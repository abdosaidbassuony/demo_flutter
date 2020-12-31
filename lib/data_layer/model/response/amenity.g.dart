// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amenity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Amenity _$AmenityFromJson(Map<String, dynamic> json) {
  return Amenity(
    id: json['id'] as int,
    imageUrl: json['imageUrl'],
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$AmenityToJson(Amenity instance) => <String, dynamic>{
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'name': instance.name,
    };
