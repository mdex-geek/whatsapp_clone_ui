import 'package:flutter/material.dart';
import 'package:whatsapp_ui/color.dart';

class MessageMobileInputBox extends StatelessWidget {
  const MessageMobileInputBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.07,
      child: TextField(
        decoration: InputDecoration(
          fillColor: mobileChatBoxColor,
          filled: true,
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.emoji_emotions,
                color: Colors.grey,
              ),
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt),
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.attach_file_outlined),
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.mic),
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          hintText: 'Type a message',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
