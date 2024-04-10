import 'package:flutter/material.dart';
import 'package:therapist/core/ui_kit/theme/app_text_theme.dart';
import 'package:therapist/core/ui_kit/theme/color_theme.dart';
import 'package:therapist/data/models/therapist_model.dart';

class TherapistListWidget extends StatelessWidget {
  final List<Therapist> therapists;

  const TherapistListWidget({
    super.key,
    required this.therapists,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListView.builder(
        itemCount: therapists.length,
        itemBuilder: (context, index) {
          Therapist therapist = therapists[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Container(
              decoration: BoxDecoration(
                  color: ColorTheme.white,
                  borderRadius: BorderRadius.circular(24)),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(therapist.imagePath),
                ),
                title: Text(
                  therapist.name,
                  style: AppTextTheme.therapistName,
                ),
                subtitle: Text(
                  'Rating: ${therapist.rating} | Experience: ${therapist.experienceYears} years',
                  style: AppTextTheme.rating,
                ),
                trailing: Image.asset(
                  therapist.countryFlag,
                  width: 40,
                  height: 20,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
