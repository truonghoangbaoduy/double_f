import 'package:double_f_last_mile_delivery/features/message/screens/widgets/message_screen_body.dart';
import 'package:double_f_last_mile_delivery/features/message/screens/widgets/message_screen_header.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          MessageScreenHeader(),
          MessageScreenBody(),
        ],
      ),
    );
  }
}
