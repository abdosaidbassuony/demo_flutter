import 'package:gpu_flutter_app/data_layer/model/response/data.dart';
import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'response.g.dart';

@JsonSerializable()
class HomeResponse {
  @JsonKey(name: 'data')
  List<Data> data;
  @JsonKey(name: 'responseCode')
  int responseCode;
  @JsonKey(name: 'responseMessage')
  String responseMessage;
  @JsonKey(name: 'responseMessageAr')
  String responseMessageAr;
  @JsonKey(name: 'responseMessageEn')
  String responseMessageEn;
  @JsonKey(name: 'responseRemark')
  String responseRemark;

  HomeResponse(
      {this.data,
      this.responseCode,
      this.responseMessage,
      this.responseMessageAr,
      this.responseMessageEn,
      this.responseRemark});

factory HomeResponse.fromJson(Map<String, dynamic> json) => _$HomeResponseFromJson(json);

Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}
