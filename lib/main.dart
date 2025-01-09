import 'package:double_f_last_mile_delivery/features/authentication/screens/onboarding/onboarding.dart';
import 'package:double_f_last_mile_delivery/features/order/screens/order_placement.dart';
import 'package:double_f_last_mile_delivery/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.light,
      theme: TAppTheme.lightTheme,
      home: const OrderPlacementScreen(),
      getPages: [
        GetPage(
          name: '/onboarding',
          page: () => const OnboardingScreen(),
        ),
        GetPage(name: '/order', page: () => const OrderPlacementScreen()),
      ],
    );
  }
}
