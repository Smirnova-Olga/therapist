import 'package:json_annotation/json_annotation.dart';

part 'therapist_model.g.dart';

@JsonSerializable()
class Therapist {
  final String name;
  final int age;
  final double rating;
  final int experienceYears;
  final String description;
  final String imagePath;
  final String countryFlag;

  Therapist({
    required this.name,
    required this.age,
    required this.rating,
    required this.experienceYears,
    required this.description,
    required this.imagePath,
    required this.countryFlag,
  });

  factory Therapist.fromJson(Map<String, dynamic> json) =>
      _$TherapistFromJson(json);
  Map<String, dynamic> toJson() => _$TherapistToJson(this);

  Therapist copyWith({
    String? name,
    int? age,
    double? rating,
    int? experienceYears,
    String? description,
    String? imagePath,
    String? countryFlag,
  }) {
    return Therapist(
      name: name ?? this.name,
      age: age ?? this.age,
      rating: rating ?? this.rating,
      experienceYears: experienceYears ?? this.experienceYears,
      description: description ?? this.description,
      imagePath: imagePath ?? this.imagePath,
      countryFlag: countryFlag ?? this.countryFlag,
    );
  }
}
