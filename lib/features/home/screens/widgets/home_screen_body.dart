import 'package:double_f_last_mile_delivery/features/home/screens/widgets/home_screen_search_bar.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/widgets/serivce_list.dart';
import 'package:double_f_last_mile_delivery/features/home/screens/widgets/user_info.dart';
import 'package:double_f_last_mile_delivery/utils/constrains/dimens.dart';
import 'package:flutter/widgets.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.appHorizontalPadding),
      child: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const UserInfo(),
              const SizedBox(height: AppDimens.sectionMarginLarge),
              const HomeScreenSearchBar(hint: 'Order tracking...'),
              const SizedBox(height: AppDimens.sectionMarginMedium),
              Image.asset('assets/images/home/shipping-banner.png'),
              const SizedBox(height: AppDimens.sectionMarginMedium),
              const ServiceList(),
            ],
          ),
        ),
      ),
    );
  }
}
