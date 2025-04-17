import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.myMessage});

  final bool myMessage;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: myMessage ? Alignment.bottomRight : Alignment.bottomLeft,
      child: Row(
         mainAxisAlignment:
          myMessage ? MainAxisAlignment.end : MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(!myMessage)
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                "assets/avt2.png",
                height: 25,
                width: 25,
                fit: BoxFit.cover,
              ),
            ),
          SizedBox(width: 5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 270, 
                ),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: myMessage ? Color(0xFFE1E1E2) : Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [
                      Text(
                        "Hello wjd hwebchj bwehjb chjweb dhjwbe dbcwhejbf hjwebhfj wef",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text("1:30"),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
          if(myMessage)
            SizedBox(width: 5),
          if(myMessage) 
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                "assets/avt2.png",
                height: 25,
                width: 25,
                fit: BoxFit.cover,
              ),
            ),
        ],
      ),
    );
  }
}
