import 'package:chat_app/widget/ChatBottomSheet.dart';
import 'package:chat_app/widget/Chat_message.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leadingWidth: 30,
            titleSpacing: 0,
            title: Row(
              children: [
                const SizedBox(width: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    "assets/avt2.png",
                    height: 45,
                    width: 45,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hải",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF113953),
                      ),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.call),
                color: Color(0xFF113953),
                onPressed: () {
                  // TODO: Gọi điện
                },
              ),
              IconButton(
                icon: const Icon(Icons.videocam),
                color: Color(0xFF113953),
                onPressed: () {
                  // TODO: Gọi video
                },
              ),
              const SizedBox(width: 5),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 80),
        children: [
          ChatMessage(myMessage: true,),
          ChatMessage(myMessage: true,),
          ChatMessage(myMessage: true,),
          ChatMessage(myMessage: true,),
          ChatMessage(myMessage: true,),
          ChatMessage(myMessage: true,),
          ChatMessage(myMessage: true,),
          ChatMessage(myMessage: true,),
          ChatMessage(myMessage: true,),
          ChatMessage(myMessage: true,),
          ChatMessage(myMessage: true,),
          ChatMessage(myMessage: true,),
          ChatMessage(myMessage: false,)
        ],
      ),
      bottomSheet: Chatbottomsheet(),
    );
  }
}
