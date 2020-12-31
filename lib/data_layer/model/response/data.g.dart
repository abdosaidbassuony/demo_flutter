// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    address: json['address'] as String,
    amenities: (json['amenities'] as List)
        ?.map((e) =>
            e == null ? null : Amenity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    area: (json['area'] as num)?.toDouble(),
    areaSpace: (json['areaSpace'] as num)?.toDouble(),
    bathRoom: (json['bathRoom'] as num)?.toDouble(),
    bedRoom: (json['bedRoom'] as num)?.toDouble(),
    category: json['category'] as String,
    description: json['description'] as String,
    distanceFromMe: json['distanceFromMe'],
    email: json['email'] as String,
    expireDate: json['expireDate'],
    floorNumber: json['floorNumber'] as String,
    furnishing: json['furnishing'] as String,
    id: json['id'] as int,
    isFavourit: json['isFavourit'] as bool,
    isFeatured: json['isFeatured'] as bool,
    isHotDeals: json['isHotDeals'] as bool,
    isMap: json['isMap'] as bool,
    isRented: json['isRented'] as bool,
    isSold: json['isSold'] as bool,
    latitude: (json['latitude'] as num)?.toDouble(),
    longtiude: (json['longtiude'] as num)?.toDouble(),
    mortirage: json['mortirage'] as bool,
    parking: json['parking'] as int,
    phone: json['phone'] as String,
    price: json['price'] as String,
    primaryView: json['primaryView'] == null
        ? null
        : PrimaryView.fromJson(json['primaryView'] as Map<String, dynamic>),
    propertyImages: (json['propertyImages'] as List)
        ?.map((e) => e == null
            ? null
            : PropertyImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    propertyType: json['propertyType'] == null
        ? null
        : PropertyType.fromJson(json['propertyType'] as Map<String, dynamic>),
    rentAmount: (json['rentAmount'] as num)?.toDouble(),
    rowNum: json['rowNum'] as int,
    serviceCharge: (json['serviceCharge'] as num)?.toDouble(),
    shareLink: json['shareLink'] as String,
    smsNo: json['smsNo'] as String,
    status: json['status'],
    title: json['title'] as String,
    unitNo: json['unitNo'] as String,
    unitRef: json['unitRef'] as String,
    propertyFurnishingId: json['PropertyFurnishingId'] as int,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'address': instance.address,
      'amenities': instance.amenities,
      'area': instance.area,
      'areaSpace': instance.areaSpace,
      'bathRoom': instance.bathRoom,
      'bedRoom': instance.bedRoom,
      'category': instance.category,
      'description': instance.description,
      'distanceFromMe': instance.distanceFromMe,
      'email': instance.email,
      'expireDate': instance.expireDate,
      'floorNumber': instance.floorNumber,
      'furnishing': instance.furnishing,
      'id': instance.id,
      'isFavourit': instance.isFavourit,
      'isFeatured': instance.isFeatured,
      'isHotDeals': instance.isHotDeals,
      'isMap': instance.isMap,
      'isRented': instance.isRented,
      'isSold': instance.isSold,
      'latitude': instance.latitude,
      'longtiude': instance.longtiude,
      'mortirage': instance.mortirage,
      'parking': instance.parking,
      'phone': instance.phone,
      'price': instance.price,
      'primaryView': instance.primaryView,
      'propertyImages': instance.propertyImages,
      'propertyType': instance.propertyType,
      'rentAmount': instance.rentAmount,
      'rowNum': instance.rowNum,
      'serviceCharge': instance.serviceCharge,
      'shareLink': instance.shareLink,
      'smsNo': instance.smsNo,
      'status': instance.status,
      'title': instance.title,
      'unitNo': instance.unitNo,
      'unitRef': instance.unitRef,
      'PropertyFurnishingId': instance.propertyFurnishingId,
    };
