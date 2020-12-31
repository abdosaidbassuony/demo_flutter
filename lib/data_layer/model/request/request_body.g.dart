// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestBody _$RequestBodyFromJson(Map<String, dynamic> json) {
  return RequestBody(
    appLanguage: json['appLanguage'] as String,
    deviceSerial: json['deviceSerial'] as String,
    measureUnitId: json['MeasureUnitId'] as int,
    appVersion: json['appversion'] as String,
    notificationToken: json['notificationToken'] as String,
    deviceType: json['deviceType'] as int,
    userId: json['userId'] as int,
    data: json['data'] == null
        ? null
        : RequestData.fromJson(json['data'] as Map<String, dynamic>),
    ip: json['ip'] as String,
    currencyId: json['CurrencyId'] as int,
    countryId: json['CountryId'] as int,
    osVersion: json['osversion'] as String,
  );
}

Map<String, dynamic> _$RequestBodyToJson(RequestBody instance) =>
    <String, dynamic>{
      'appLanguage': instance.appLanguage,
      'deviceSerial': instance.deviceSerial,
      'MeasureUnitId': instance.measureUnitId,
      'appversion': instance.appVersion,
      'notificationToken': instance.notificationToken,
      'deviceType': instance.deviceType,
      'userId': instance.userId,
      'data': instance.data,
      'ip': instance.ip,
      'CurrencyId': instance.currencyId,
      'CountryId': instance.countryId,
      'osversion': instance.osVersion,
    };
