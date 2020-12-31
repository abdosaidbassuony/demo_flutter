import 'package:json_annotation/json_annotation.dart';

part 'property_image.g.dart';

@JsonSerializable()
class PropertyImage {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'isIntegration')
  bool isIntegration;
  @JsonKey(name: 'isMain')
  bool isMain;
  @JsonKey(name: 'type')
  String type;
  @JsonKey(name: 'url')
  String url;

  PropertyImage(
      {this.id, this.isIntegration, this.isMain, this.type, this.url});

factory PropertyImage.fromJson(Map<String, dynamic> json) =>
    _$PropertyImageFromJson(json);

Map<String, dynamic> toJson() => _$PropertyImageToJson(this);
}
