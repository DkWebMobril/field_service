import 'package:field_service/modules/expense/popup_widget.dart';
import 'package:field_service/utils/essentials.dart';
import 'package:field_service/utils/helper.dart';
import 'package:field_service/utils/my_images.dart';
import 'package:flutter/material.dart';

class ChatMobileScreen extends StatefulWidget {
  const ChatMobileScreen({super.key});

  @override
  State<ChatMobileScreen> createState() => _ChatMobileScreenState();
}

class _ChatMobileScreenState extends State<ChatMobileScreen> {
  final List<Message> messages = [
    Message('Hello!', MessageType.receiver),
    Message('How are you?', MessageType.sender),
    Message('I\'m fine, thank you!', MessageType.receiver),
    Message('What are you up to?', MessageType.sender),
    Message('Just working on a Flutter app.', MessageType.receiver),
  ];

  TextEditingController _textController = TextEditingController();

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      messages.add(Message(text, MessageType.sender));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.bgColor,
      appBar: Helper.getAppBar("Chat".tr(), context, '1', "0", null),
      body: Column(
        children: [
          Container(
            color: MyTheme.white,
            padding: const EdgeInsets.only(
                left: 20, right: 15.0, top: 10, bottom: 10),
            child: Row(
              children: [
                Image.asset(
                  MyImages.dummy,
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'hUserNmae'.tr(),
                    style: MyStyle.medium5().s12,
                  ),
                ),
                const PopupMenuCommon()
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return _buildMessage(messages[index]);
              },
            ),
          ),
          _buildInputField(),
        ],
      ),
    );
  }

  Widget _buildMessage(Message message) {
    Color backgroundColor =
        message.type == MessageType.sender ? Colors.blue : Colors.grey;

    CrossAxisAlignment alignment = message.type == MessageType.sender
        ? CrossAxisAlignment.end
        : CrossAxisAlignment.start;

    return Align(
      alignment: alignment == CrossAxisAlignment.end
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Text(
          message.text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildInputField() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18.0),
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: MyTheme.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15).withOpacity(0.8),
            spreadRadius: -5.5,
            blurRadius: 5.0,
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: _textController,
              // onSubmitted: _handleSubmitted,

              decoration: InputDecoration(
                counterText: "",
                filled: true,
                fillColor: MyTheme.white,
                hintText: 'Your Message...',
                hintStyle: MyStyle.regular4().s12,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: MyTheme.white, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: MyTheme.white, width: 1.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: MyTheme.white, width: 1.0),
                ),
              ),
            ),
          ),
          IconButton(
            icon: ImageIcon(AssetImage(MyImages.gallery), size: 20),
            onPressed: () {},
          ),
          InkWell(
            child: Image.asset(
              MyImages.sent,
              height: 25,
            ),
            onTap: () => _handleSubmitted(_textController.text),
          ),
        ],
      ),
    );
  }
}

enum MessageType { sender, receiver }

class Message {
  final String text;
  final MessageType type;

  Message(this.text, this.type);
}
