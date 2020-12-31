import 'package:json_annotation/json_annotation.dart';

part 'request_data.g.dart';

@JsonSerializable()
class RequestData {
  @JsonKey(name: 'areaId')
  int areaId;
  @JsonKey(name: 'categoryId')
  int categoryId;
  @JsonKey(name: 'categoryName')
  String categoryName;
  @JsonKey(name: 'cityId')
  int cityId;
  @JsonKey(name: 'cityName')
  String cityName;
  @JsonKey(name: 'countryId')
  int countryId;
  @JsonKey(name: 'furnishedName')
  String furnishedName;
  @JsonKey(name: 'isFeature')
  bool isFeature;
  @JsonKey(name: 'isRented')
  int isRented;
  @JsonKey(name: 'isRentedName')
  String isRentedName;
  @JsonKey(name: 'keyword')
  String keyword;
  @JsonKey(name: 'lastRowId')
  int lastRowId;
  @JsonKey(name: 'maxArea')
  int maxArea;
  @JsonKey(name: 'maxBathRoom')
  int maxBathRoom;
  @JsonKey(name: 'maxBedRoom')
  int maxBedRoom;
  @JsonKey(name: 'maxPrice')
  int maxPrice;
  @JsonKey(name: 'minArea')
  int minArea;
  @JsonKey(name: 'minBathRoom')
  int minBathRoom;
  @JsonKey(name: 'minBedRoom')
  int minBedRoom;
  @JsonKey(name: 'minPrice')
  int minPrice;
  @JsonKey(name: 'propId')
  int propId;
  @JsonKey(name: 'propertyAdOnsDtos')
  List<Object> propertyAdOnsDots;
  @JsonKey(name: 'propertyAmenities')
  List<Object> propertyAmenities;
  @JsonKey(name: 'propertyCity')
  List<Object> propertyCity;
  @JsonKey(name: 'propertyFurnishingId')
  int propertyFurnishingId;
  @JsonKey(name: 'propertyTypeId')
  int propertyTypeId;
  @JsonKey(name: 'propertyTypeName')
  String propertyTypeName;
  @JsonKey(name: 'sortTypeId')
  int sortTypeId;

  RequestData(
      {this.propertyFurnishingId = -1,
      this.minBathRoom = -1,
      this.isRented = -1,
      this.keyword = "",
      this.minPrice = -1,
      this.minArea = -1,
      this.propId = -1,
      this.areaId = -1,
      this.countryId = 65946,
      this.categoryName = "",
      this.cityName = "",
      this.propertyAmenities,
      this.lastRowId = 20,
      this.cityId = -1,
      this.propertyAdOnsDots,
      this.isRentedName = "",
      this.propertyTypeName = "",
      this.maxArea = -1,
      this.isFeature = false,
      this.maxBathRoom = -1,
      this.minBedRoom = -1,
      this.maxPrice = -1,
      this.categoryId = -1,
      this.furnishedName = "",
      this.propertyTypeId = 1,
      this.maxBedRoom = -1,
      this.propertyCity,
      this.sortTypeId = -1});

  // RequestData.propertyList(
  //     {this.propertyFurnishingId = -1,
  //     this.minBathRoom = -1,
  //     this.isRented = -1,
  //     this.keyword = "",
  //     this.minPrice = -1,
  //     this.minArea = -1,
  //     this.propId = -1,
  //     this.areaId = -1,
  //     this.countryId = 65946,
  //     this.categoryName = "",
  //     this.cityName = "",
  //     this.propertyAmenities,
  //     this.lastRowId = 20,
  //     this.cityId = -1,
  //     this.propertyAdOnsDots,
  //     this.isRentedName = "",
  //     this.propertyTypeName = "",
  //     this.maxArea = -1,
  //     this.isFeature = false,
  //     this.maxBathRoom = -1,
  //     this.minBedRoom = -1,
  //     this.maxPrice = -1,
  //     this.categoryId = -1,
  //     this.furnishedName = "",
  //     this.propertyTypeId = 1,
  //     this.maxBedRoom = -1,
  //     this.propertyCity,
  //     this.sortTypeId = -1});

  factory RequestData.fromJson(Map<String, dynamic> json) =>
      _$RequestDataFromJson(json);

  Map<String, dynamic> toJson() => _$RequestDataToJson(this);
}
