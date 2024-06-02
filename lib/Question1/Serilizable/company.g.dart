// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) => Company(
      isActive: (json['is_active'] as num).toInt(),
      name: json['name'] as String,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      established: Company._$formatEstablish(json['established'] as String),
      departements: (json['departements'] as List<dynamic>?)
          ?.map((e) => Department.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..format = json['format'] as String;

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'format': instance.format,
      'is_active': instance.isActive,
      'name': instance.name,
      'address': instance.address,
      'established': Company._$returnToUTC(instance.established),
      'departements': instance.departements,
    };
