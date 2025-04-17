import 'package:chat_app/page/Chat_page.dart';
import 'package:flutter/material.dart';

class MessageRecent extends StatelessWidget {
  const MessageRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatPage()),
            );
        },
        child: Container(
          height: 65,
          child: Row(
            children: [
              Container(
                // color: Colors.amberAccent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Image.asset(
                    "assets/avt2.png",
                    height: 65,
                    width: 65,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Programmer",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF113953),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Text(
                        "Hello",
                        maxLines: 1, // chỉ hiển thị 1 dòng
                        overflow:
                            TextOverflow.ellipsis, // thêm "..." nếu quá dài
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Text(
                      "12:30",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 23,
                      width: 23,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF113953),
                      ),
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
