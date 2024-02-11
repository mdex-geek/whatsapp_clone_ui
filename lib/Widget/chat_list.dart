import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widget/my_message_card.dart';
import 'package:whatsapp_ui/Widget/sender_message_card.dart';
import 'package:whatsapp_ui/info.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]["isMe"] == true) {
          // MyMessage -> card
          return MyMessageCard(
            date: messages[index]['time'].toString(),
            message: messages[index]["text"] as String,
          );
        } else {
          // SenderMessageCard -> card

          // if you remove the return you do not see the chat
          return SenderMessageCard(
            message: messages[index]['text'] as String,
            date: messages[index]['time'].toString(),
          );
        }
      },
    );
  }
}
