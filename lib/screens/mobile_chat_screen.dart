import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/info.dart';
import 'package:whatsapp_ui/widget/chat_list.dart';
import 'package:whatsapp_ui/widget/message_mobile_input_box.dart';

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
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            info[0]['profilePic'].toString(),
          ),
          radius: 5,
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
