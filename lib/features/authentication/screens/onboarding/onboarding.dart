import 'package:double_f_last_mile_delivery/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:double_f_last_mile_delivery/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:double_f_last_mile_delivery/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:double_f_last_mile_delivery/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                  image: 'assets/logos/logo.jpg',
                  title: 'Welcome to Double F',
                  subTitle:
                      'Get your parcels delivered fast and reliably. Track in real-time and enjoy smarter routes with DoubleF—your delivery made simple.'),
              OnBoardingPage(
                  image: 'assets/images/onboarding/fast_optimized_route.png',
                  title: 'Fast and Optimized Route',
                  subTitle:
                      'Faster deliveries, every time. Our smart routing avoids traffic, weather delays, and other disruptions, so your parcel arrives on time.'),
              OnBoardingPage(
                  image:
                      'assets/images/onboarding/flexible_shipping_options.png',
                  title: 'Flexible Shipping Options',
                  subTitle:
                      'Delivery options designed for you—pick what fits your schedule and needs.'),
              OnBoardingPage(
                  image: 'assets/images/onboarding/cashless_payment.png',
                  title: 'Cashless Payment',
                  subTitle:
                      'Pay online with ease. Our cashless options make every delivery smooth and secure.'),
            ],
          ),

          // Skip button
          const OnBoardingSkip(),

          // Dot navigation SmoothPageIndicator
          const OnBoardingNavigation(),

          // Circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 24.0,
      bottom: 56,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
