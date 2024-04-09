import 'package:flutter/material.dart';
import 'package:therapist/core/ui_kit/theme/color_theme.dart';
import 'package:therapist/presentation/choose_therapist/screens/choose_therapist_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Therapist',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: ColorTheme.background,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: ColorTheme.background,
        ),
        useMaterial3: true,
      ),
      home: const ChooseTherapistPage(),
    );
  }
}
