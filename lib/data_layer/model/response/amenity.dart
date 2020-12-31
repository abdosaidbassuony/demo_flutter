import 'package:json_annotation/json_annotation.dart';

part 'amenity.g.dart';

@JsonSerializable()
class Amenity {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'imageUrl')
  Object imageUrl;
  @JsonKey(name: 'name')
  String name;

  Amenity({this.id, this.imageUrl, this.name});

factory Amenity.fromJson(Map<String, dynamic> json) => _$AmenityFromJson(json);

Map<String, dynamic> toJson() => _$AmenityToJson(this);
}
