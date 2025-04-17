import 'package:flutter/material.dart';

class Chatbottomsheet extends StatelessWidget {
  const Chatbottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0),
      height: 100,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFF113953), width: 2),
              ),
              child: const Icon(Icons.add, color: Color(0xFF113953)),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 5),
              child: Container(
                alignment: Alignment.centerRight,
                width: 270,
                child: Container(
                  padding: EdgeInsetsDirectional.only(start: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFF113953), width: 1.5),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null, 
                    minLines: 1,
                    decoration: const InputDecoration(
                      hintText: "Type something",
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.emoji_emotions)
                    ),
                    
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              
              child: const Icon(Icons.send, color: Color(0xFF113953)),
            ),
          ),
        ],
      ),
    );
  }
}
