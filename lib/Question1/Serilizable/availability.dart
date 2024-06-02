import 'package:json_annotation/json_annotation.dart';
part 'availability.g.dart';

@JsonSerializable()
class Availability {
  @JsonKey(name: 'online')
  bool online;
  @JsonKey(name: 'inStore')
  bool inStore;
  Availability(this.online, this.inStore);

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
  Map<String, dynamic> toJson() => _$AvailabilityToJson(this);
}
