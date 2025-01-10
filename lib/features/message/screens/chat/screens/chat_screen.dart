import 'package:double_f_last_mile_delivery/features/message/screens/chat/widgets/chat_screen_body.dart';
import 'package:double_f_last_mile_delivery/features/message/screens/chat/widgets/chat_screen_footer.dart';
import 'package:double_f_last_mile_delivery/features/message/screens/chat/widgets/chat_screen_header.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ChatScreenHeader(),
          ChatScreenBody(),
          ChatScreenFooter(),
        ],
      )),
    );
  }
}
