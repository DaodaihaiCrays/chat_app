import 'package:chat_app/widget/Message_recent.dart';
import 'package:flutter/material.dart';

class RecentChatPage extends StatelessWidget {
  const RecentChatPage({super.key});

  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
      
      child: Column(
        children: [
          for(int i = 0 ; i < 10; i ++)
            MessageRecent()
        ],
      ),
    );
  }
}
