import 'package:json_annotation/json_annotation.dart';
part 'address.g.dart';

@JsonSerializable()
class Address {
  @JsonKey(name: 'street')
  String street;
  @JsonKey(name: 'city')
  String city;
  @JsonKey(name: 'state')
  String state;
  @JsonKey(name: 'postalCode')
  String postalCode;

  Address({
    required this.street,
    required this.city,
    required this.state,
    required this.postalCode,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
  
}
