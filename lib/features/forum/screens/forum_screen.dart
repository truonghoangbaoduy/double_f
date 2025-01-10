import 'package:double_f_last_mile_delivery/features/forum/screens/widgets/forum_screen_body.dart';
import 'package:double_f_last_mile_delivery/features/forum/screens/widgets/forum_screen_header.dart';
import 'package:flutter/material.dart';

class ForumScreen extends StatelessWidget {
  const ForumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ForumScreenHeader(),
          ForumScreenBody(),
        ],
      ),
    );
  }
}
