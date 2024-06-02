import 'package:ptc_quiz1/Question1/Manual/address.dart';
import 'package:ptc_quiz1/Question1/Manual/departemnt.dart';
import 'package:ptc_quiz1/Question1/Mixins/dateMixin.dart';

class Company with DateMixin {
  int is_active;
  String name;
  Address? address;
  String established;
  List<Departement>? departements = [];

  Company({
    required this.is_active,
    required this.name,
    this.address,
    required this.established,
    this.departements,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      is_active: json['is_active'],
      name: json['name'],
      address:
          (json['address'] == null) ? null : Address.fromJson(json['address']),
      established: DateMixin.formatDate(json['established'], 'dd-MMM, yyyy'),
      departements: (json['departements'] == null)
          ? []
          : List<Departement>.from(
              json['departements'].map((x) => Departement.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'is_active': is_active,
      'name': name,
      'address': address == null ? 'null' : address!.toJson(),
      'established': DateMixin.formatUtcDate(established),
      'depatrtements': departements!.map((e) => e.toJson()).toList(),
    };
  }
}
