import 'package:json_annotation/json_annotation.dart';

part 'primary_view.g.dart';

@JsonSerializable()
class PrimaryView {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;

  PrimaryView({this.id, this.name});

  factory PrimaryView.fromJson(Map<String, dynamic> json) =>
      _$PrimaryViewFromJson(json);

  Map<String, dynamic> toJson() => _$PrimaryViewToJson(this);
}
