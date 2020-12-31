import 'package:json_annotation/json_annotation.dart';

part 'property_type.g.dart';

@JsonSerializable()
class PropertyType {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'propertyType')
  int propertyType;

  PropertyType({this.id, this.name, this.propertyType});

factory PropertyType.fromJson(Map<String, dynamic> json) =>
    _$PropertyTypeFromJson(json);

Map<String, dynamic> toJson() => _$PropertyTypeToJson(this);
}
