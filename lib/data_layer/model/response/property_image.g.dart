// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PropertyImage _$PropertyImageFromJson(Map<String, dynamic> json) {
  return PropertyImage(
    id: json['id'] as int,
    isIntegration: json['isIntegration'] as bool,
    isMain: json['isMain'] as bool,
    type: json['type'] as String,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$PropertyImageToJson(PropertyImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isIntegration': instance.isIntegration,
      'isMain': instance.isMain,
      'type': instance.type,
      'url': instance.url,
    };
