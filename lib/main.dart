import 'package:flutter/material.dart';

void main() => runApp(new FriendlyChat());

class FriendlyChat extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Friendly Chat',
      home: new ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  State createState() => new ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  @override
  final TextEditingController _textController = new TextEditingController();

  void _handleSubmitted (String text) {
    _textController.clear();
  }

  Widget _buildTextComposer() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new TextField(
        controller: _textController,
        onSubmitted: _handleSubmitted,
        decoration: new InputDecoration.collapsed(hintText: 'Send Text'),
      ),
    );
  }
  
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('FriendlyChat'),
      ),
      body: _buildTextComposer(),
    );
  }
}