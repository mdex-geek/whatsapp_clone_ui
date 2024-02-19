import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widget/chat_list.dart';
import 'package:whatsapp_ui/Widget/mobile/message_mobile_input_box.dart';
import 'package:whatsapp_ui/color.dart';
import 'package:whatsapp_ui/info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // its going to be whole new screen
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'] as String,
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: const Column(
        children: [
          Expanded(
            child: ChatList(),
          ),
          MessageMobileInputBox(),
        ],
      ),
    );
  }
}
