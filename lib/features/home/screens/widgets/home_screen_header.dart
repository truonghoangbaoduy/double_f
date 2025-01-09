import 'package:flutter/widgets.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.2,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/logo/app_background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.06),
          child: Image(
            image: const AssetImage('assets/images/logo/app_logo.png'),
            width: MediaQuery.sizeOf(context).width * 0.7,
          ),
        ),
      ),
    );
  }
}
