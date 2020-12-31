// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) {
  return HomeResponse(
    data: (json['data'] as List)
        ?.map(
            (e) => e == null ? null : Data.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    responseCode: json['responseCode'] as int,
    responseMessage: json['responseMessage'] as String,
    responseMessageAr: json['responseMessageAr'] as String,
    responseMessageEn: json['responseMessageEn'] as String,
    responseRemark: json['responseRemark'] as String,
  );
}

Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'responseCode': instance.responseCode,
      'responseMessage': instance.responseMessage,
      'responseMessageAr': instance.responseMessageAr,
      'responseMessageEn': instance.responseMessageEn,
      'responseRemark': instance.responseRemark,
    };
