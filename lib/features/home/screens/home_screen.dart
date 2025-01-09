import 'package:double_f_last_mile_delivery/features/home/screens/widgets/home_screen_body.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/widgets/home_screen_header.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeScreenHeader(),
        HomeScreenBody(),
      ],
    );
  }
}
