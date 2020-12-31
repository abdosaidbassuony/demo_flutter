import 'package:gpu_flutter_app/data_layer/model/response/property_type.dart';
import 'package:json_annotation/json_annotation.dart';

import 'amenity.dart';
import 'primary_view.dart';
import 'property_image.dart';
import 'property_type.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'address')
  String address;
  @JsonKey(name: 'amenities')
  List<Amenity> amenities;
  @JsonKey(name: 'area')
  double area;
  @JsonKey(name: 'areaSpace')
  double areaSpace;
  @JsonKey(name: 'bathRoom')
  double bathRoom;
  @JsonKey(name: 'bedRoom')
  double bedRoom;
  @JsonKey(name: 'category')
  String category;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'distanceFromMe')
  Object distanceFromMe;
  @JsonKey(name: 'email')
  String email;
  @JsonKey(name: 'expireDate')
  Object expireDate;
  @JsonKey(name: 'floorNumber')
  String floorNumber;
  @JsonKey(name: 'furnishing')
  String furnishing;
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'isFavourit')
  bool isFavourit;
  @JsonKey(name: 'isFeatured')
  bool isFeatured;
  @JsonKey(name: 'isHotDeals')
  bool isHotDeals;
  @JsonKey(name: 'isMap')
  bool isMap;
  @JsonKey(name: 'isRented')
  bool isRented;
  @JsonKey(name: 'isSold')
  bool isSold;
  @JsonKey(name: 'latitude')
  double latitude;
  @JsonKey(name: 'longtiude')
  double longtiude;
  @JsonKey(name: 'mortirage')
  bool mortirage;
  @JsonKey(name: 'parking')
  int parking;
  @JsonKey(name: 'phone')
  String phone;
  @JsonKey(name: 'price')
  String price;
  @JsonKey(name: 'primaryView')
  PrimaryView primaryView;
  @JsonKey(name: 'propertyImages')
  List<PropertyImage> propertyImages;
  @JsonKey(name: 'propertyType')
  PropertyType propertyType;
  @JsonKey(name: 'rentAmount')
  double rentAmount;
  @JsonKey(name: 'rowNum')
  int rowNum;
  @JsonKey(name: 'serviceCharge')
  double serviceCharge;
  @JsonKey(name: 'shareLink')
  String shareLink;
  @JsonKey(name: 'smsNo')
  String smsNo;
  @JsonKey(name: 'status')
  Object status;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'unitNo')
  String unitNo;
  @JsonKey(name: 'unitRef')
  String unitRef;
  @JsonKey(name: 'PropertyFurnishingId')
  int propertyFurnishingId;

  Data(
      {this.address,
      this.amenities,
      this.area,
      this.areaSpace,
      this.bathRoom,
      this.bedRoom,
      this.category,
      this.description,
      this.distanceFromMe,
      this.email,
      this.expireDate,
      this.floorNumber,
      this.furnishing,
      this.id,
      this.isFavourit,
      this.isFeatured,
      this.isHotDeals,
      this.isMap,
      this.isRented,
      this.isSold,
      this.latitude,
      this.longtiude,
      this.mortirage,
      this.parking,
      this.phone,
      this.price,
      this.primaryView,
      this.propertyImages,
      this.propertyType,
      this.rentAmount,
      this.rowNum,
      this.serviceCharge,
      this.shareLink,
      this.smsNo,
      this.status,
      this.title,
      this.unitNo,
      this.unitRef,
      this.propertyFurnishingId});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
