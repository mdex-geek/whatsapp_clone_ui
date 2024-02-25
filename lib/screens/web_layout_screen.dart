import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widget/website/message_web_input_box.dart';
import 'package:whatsapp_ui/Widget/website/web_profile_bar.dart';
import 'package:whatsapp_ui/Widget/website/web_search_bar.dart';
import 'package:whatsapp_ui/widget/chat_list.dart';
import 'package:whatsapp_ui/widget/website/web_chat_appbar.dart';

import '../Widget/contact_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //web profile bar
                  WebProfileBar(),
                  // web Search bar
                  WebSearchBar(),
                  //contact list
                  ContactList(),
                ],
              ),
            ),
          ),
          // web Screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Column(
              children: [
                //chat app bar
                WebChatAppBar(),
                // chat list
                Expanded(
                  child: ChatList(),
                ),
                //Message input Box
                MessageWebInputBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
