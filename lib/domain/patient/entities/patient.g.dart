// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Patient _$_$_PatientFromJson(Map<String, dynamic> json) {
  return _$_Patient(
    id: json['id'] as String,
    name: Name.fromJson(json['name'] as Map<String, dynamic>),
    gender: json['gender'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    picture: json['picture'] as String,
    address: Address.fromJson(json['address'] as Map<String, dynamic>),
    dateOfBirth:
        DateOfBirth.fromJson(json['dateOfBirth'] as Map<String, dynamic>),
    nationality: json['nationality'] as String,
  );
}

Map<String, dynamic> _$_$_PatientToJson(_$_Patient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'email': instance.email,
      'phone': instance.phone,
      'picture': instance.picture,
      'address': instance.address,
      'dateOfBirth': instance.dateOfBirth,
      'nationality': instance.nationality,
    };
