import 'package:chat_app/widget/Avt_onl.dart';
import 'package:flutter/material.dart';

class ActiveChat extends StatelessWidget {
  const ActiveChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < 10; i++)
              AvtOnl(name: "Hai")
          ],
        ),
      ),
    );
  }
}
