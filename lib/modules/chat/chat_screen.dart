import 'package:field_service/modules/chat/chatModel.dart';
import 'package:field_service/modules/chat/chat_mobileBody.dart';
import 'package:field_service/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static const String route = "/chatScreen";
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBlueLayout<ChatModel>(
        desktopBody:   ChatMobileScreen(),
        mobileBody:   ChatMobileScreen());
  }
}