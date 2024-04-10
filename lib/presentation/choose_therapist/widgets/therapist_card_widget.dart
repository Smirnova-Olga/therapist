import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:therapist/core/ui_kit/theme/app_text_theme.dart';
import 'package:therapist/core/ui_kit/theme/color_theme.dart';
import 'package:therapist/data/models/therapist_model.dart';

class TherapistCard extends StatelessWidget {
  final Therapist therapist;
  final bool isCurrent;

  const TherapistCard({
    super.key,
    required this.therapist,
    required this.isCurrent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorTheme.white, borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Image.asset(
                  therapist.imagePath,
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: IconButton.outlined(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/heart.svg',
                      width: 20,
                      height: 20,
                    ),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      maximumSize: const Size(50, 50),
                      side: const BorderSide(color: Colors.transparent),
                      backgroundColor:
                          ColorTheme.buttonBackground.withOpacity(0.3),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          '${therapist.name}, ${therapist.age}',
                          style: AppTextTheme.therapistName,
                        ),
                      ),
                      SizedBox(
                        width: 22,
                        height: 18,
                        child: Image.asset(
                          therapist.countryFlag,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        'Rating ${therapist.rating}',
                        style: AppTextTheme.rating,
                      ),
                      const SizedBox(width: 8),
                      Row(
                        children: List.generate(5, (index) {
                          return Icon(
                            Icons.star,
                            color: index < therapist.rating
                                ? ColorTheme.deepBlue
                                : ColorTheme.greyStar,
                            size: 16,
                          );
                        }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 26,
                      decoration: BoxDecoration(
                        color: ColorTheme.orange,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 5),
                        child: Text(
                          'Experience ${therapist.experienceYears} years',
                          style: AppTextTheme.experience,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (isCurrent)
                    Text(
                      therapist.description,
                      style: AppTextTheme.therapistDescription,
                      maxLines: 3,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
