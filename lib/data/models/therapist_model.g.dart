// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'therapist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Therapist _$TherapistFromJson(Map<String, dynamic> json) => Therapist(
      name: json['name'] as String,
      age: json['age'] as int,
      rating: (json['rating'] as num).toDouble(),
      experienceYears: json['experienceYears'] as int,
      description: json['description'] as String,
      imagePath: json['imagePath'] as String,
      countryFlag: json['countryFlag'] as String,
    );

Map<String, dynamic> _$TherapistToJson(Therapist instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'rating': instance.rating,
      'experienceYears': instance.experienceYears,
      'description': instance.description,
      'imagePath': instance.imagePath,
      'countryFlag': instance.countryFlag,
    };
