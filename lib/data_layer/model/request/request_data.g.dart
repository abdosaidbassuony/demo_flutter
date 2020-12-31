// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestData _$RequestDataFromJson(Map<String, dynamic> json) {
  return RequestData(
    propertyFurnishingId: json['propertyFurnishingId'] as int,
    minBathRoom: json['minBathRoom'] as int,
    isRented: json['isRented'] as int,
    keyword: json['keyword'] as String,
    minPrice: json['minPrice'] as int,
    minArea: json['minArea'] as int,
    propId: json['propId'] as int,
    areaId: json['areaId'] as int,
    countryId: json['countryId'] as int,
    categoryName: json['categoryName'] as String,
    cityName: json['cityName'] as String,
    propertyAmenities: json['propertyAmenities'] as List,
    lastRowId: json['lastRowId'] as int,
    cityId: json['cityId'] as int,
    propertyAdOnsDots: json['propertyAdOnsDtos'] as List,
    isRentedName: json['isRentedName'] as String,
    propertyTypeName: json['propertyTypeName'] as String,
    maxArea: json['maxArea'] as int,
    isFeature: json['isFeature'] as bool,
    maxBathRoom: json['maxBathRoom'] as int,
    minBedRoom: json['minBedRoom'] as int,
    maxPrice: json['maxPrice'] as int,
    categoryId: json['categoryId'] as int,
    furnishedName: json['furnishedName'] as String,
    propertyTypeId: json['propertyTypeId'] as int,
    maxBedRoom: json['maxBedRoom'] as int,
    propertyCity: json['propertyCity'] as List,
    sortTypeId: json['sortTypeId'] as int,
  );
}

Map<String, dynamic> _$RequestDataToJson(RequestData instance) =>
    <String, dynamic>{
      'areaId': instance.areaId,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'cityId': instance.cityId,
      'cityName': instance.cityName,
      'countryId': instance.countryId,
      'furnishedName': instance.furnishedName,
      'isFeature': instance.isFeature,
      'isRented': instance.isRented,
      'isRentedName': instance.isRentedName,
      'keyword': instance.keyword,
      'lastRowId': instance.lastRowId,
      'maxArea': instance.maxArea,
      'maxBathRoom': instance.maxBathRoom,
      'maxBedRoom': instance.maxBedRoom,
      'maxPrice': instance.maxPrice,
      'minArea': instance.minArea,
      'minBathRoom': instance.minBathRoom,
      'minBedRoom': instance.minBedRoom,
      'minPrice': instance.minPrice,
      'propId': instance.propId,
      'propertyAdOnsDtos': instance.propertyAdOnsDots,
      'propertyAmenities': instance.propertyAmenities,
      'propertyCity': instance.propertyCity,
      'propertyFurnishingId': instance.propertyFurnishingId,
      'propertyTypeId': instance.propertyTypeId,
      'propertyTypeName': instance.propertyTypeName,
      'sortTypeId': instance.sortTypeId,
    };
