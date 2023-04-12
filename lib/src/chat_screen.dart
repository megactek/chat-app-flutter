// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'chat_message.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textEditingController =
      new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  void _handleSubmitted(String text) {
    _textEditingController.clear();
    ChatMessage message = new ChatMessage(text: text);
    setState(() {
      _messages.insert(0, message);
    });
  }

  Widget _textComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Color.fromARGB(255, 33, 129, 208)),
      child: new Container(
          margin: EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(
            children: <Widget>[
              new Flexible(
                child: new TextField(
                  decoration:
                      new InputDecoration.collapsed(hintText: 'Send a message'),
                  controller: _textEditingController,
                  onSubmitted: _handleSubmitted,
                ),
              ),
              new Container(
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                child: new IconButton(
                    onPressed: () =>
                        _handleSubmitted(_textEditingController.text),
                    icon: new Icon(Icons.send)),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            padding: EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_, int index) => _messages[index],
            itemCount: _messages.length,
          ),
        ),
        new Divider(
          height: 1.0,
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposer(),
        )
      ],
    );
  }
}
