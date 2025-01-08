import 'package:double_f_last_mile_delivery/features/authentication/screens/onboarding/onboarding.dart';
import 'package:double_f_last_mile_delivery/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      home: const OnboardingScreen(),
    );
  }
}
