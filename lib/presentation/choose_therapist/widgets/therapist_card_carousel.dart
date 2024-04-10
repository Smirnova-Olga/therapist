import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:therapist/core/ui_kit/theme/color_theme.dart';
import 'package:therapist/data/models/therapist_model.dart';
import 'package:therapist/presentation/choose_therapist/widgets/therapist_card_widget.dart';

class TherapistCardCarousel extends StatefulWidget {
  final List<Therapist> therapists;

  const TherapistCardCarousel({
    super.key,
    required this.therapists,
  });

  @override
  TherapistCardCarouselState createState() => TherapistCardCarouselState();
}

class TherapistCardCarouselState extends State<TherapistCardCarousel> {
  final CarouselController _pageController = CarouselController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              CarouselSlider(
                carouselController: _pageController,
                options: CarouselOptions(
                    viewportFraction: 0.7,
                    aspectRatio: 1,
                    enableInfiniteScroll: false,
                    scrollPhysics: const BouncingScrollPhysics(),
                    autoPlay: false,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentPage = index;
                      });
                    }),
                items: widget.therapists.asMap().entries.map((entry) {
                  int idx = entry.key;
                  Therapist therapist = entry.value;
                  return Builder(
                    builder: (BuildContext context) {
                      return TherapistCard(
                        therapist: therapist,
                        isCurrent: idx == _currentPage,
                      );
                    },
                  );
                }).toList(),
              ),
              _currentPage == 0
                  ? const SizedBox.shrink()
                  : Positioned(
                      left: 0,
                      child: IconButton.outlined(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.transparent),
                            backgroundColor: ColorTheme.white,
                          ),
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 20,
                          ),
                          onPressed: () {
                            _pageController.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          }),
                    ),
              _currentPage >= widget.therapists.length - 1
                  ? const SizedBox.shrink()
                  : Positioned(
                      right: 0,
                      child: IconButton.outlined(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.transparent),
                            backgroundColor: ColorTheme.white,
                          ),
                          icon: const Icon(
                            Icons.arrow_forward,
                            size: 20,
                          ),
                          onPressed: () {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            );
                          }),
                    ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.therapists.length, (index) {
              return Container(
                margin: const EdgeInsets.all(2),
                width: _currentPage == index ? 6 : 5,
                height: _currentPage == index ? 6 : 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: _currentPage == index
                      ? ColorTheme.blue
                      : ColorTheme.grey2,
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
