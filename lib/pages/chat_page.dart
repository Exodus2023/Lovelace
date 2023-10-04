import 'package:flutter/material.dart';

import '../components/contacts/chat_contact.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversas"),
      ),
      body: ListView(children: <Widget>[
        Contact('assets/images/logo.jpg', 'Salão', 'descrição'),
        ]),
    );
  }
}


