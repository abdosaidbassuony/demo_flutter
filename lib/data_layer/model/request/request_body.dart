import 'package:gpu_flutter_app/data_layer/model/request/request_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request_body.g.dart';

@JsonSerializable()
class RequestBody {
  @JsonKey(name: 'appLanguage')
  String appLanguage;
  @JsonKey(name: 'deviceSerial')
  String deviceSerial;
  @JsonKey(name: 'MeasureUnitId')
  int measureUnitId;
  @JsonKey(name: 'appversion')
  String appVersion;
  @JsonKey(name: 'notificationToken')
  String notificationToken;
  @JsonKey(name: 'deviceType')
  int deviceType;
  @JsonKey(name: 'userId')
  int userId;
  @JsonKey(name: 'data')
  RequestData data;
  @JsonKey(name: 'ip')
  String ip;
  @JsonKey(name: 'CurrencyId')
  int currencyId;
  @JsonKey(name: 'CountryId')
  int countryId;
  @JsonKey(name: 'osversion')
  String osVersion;

  RequestBody(
      {this.appLanguage = "en",
      this.deviceSerial = "DA3D4B85-2809-485D-A93B-3F0B582FBF72",
      this.measureUnitId = 1,
      this.appVersion = "",
      this.notificationToken =
          "e9JCuaNS-0ZWgE7jwEr3-9:APA91bGw_QzWLtCEGUA7zFRJoiySzFra1i4IXMZBhDQaH1z3QuyInt726Wb7en4Xcbt7sj4HOSLPQITmvg2s7w6p_aTJtjOHS3kRT3jPz-HqpdvC7qLoqmduvJl2pU3kver_-l9QjSVG",
      this.deviceType = 1,
      this.userId = 1140,
      this.data,
      this.ip = "",
      this.currencyId = 1,
      this.countryId = 65946,
      this.osVersion = ""});

  factory RequestBody.fromJson(Map<String, dynamic> json) =>
      _$RequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$RequestBodyToJson(this);

// RequestData requestData = RequestData(
//     propertyFurnishingId: -1,
//     minBathRoom: -1,
//     isRented: -1,
//     keyword: "",
//     minPrice: -1,
//     minArea: -1,
//     propId: -1,
//     countryId: 65946,
//     categoryName: "",
//     cityName: "",
//     lastRowId: 20,
//     cityId: -1,
//     isRentedName: "",
//     maxArea: -1,
//     isFeature: false,
//     maxBathRoom: -1,
//     minBedRoom: -1,
//     maxPrice: -1,
//     categoryId: -1,
//     furnishedName: "",
//     propertyTypeId: 1,
//     maxBedRoom: -1,
//     sortTypeId: -1);
}
