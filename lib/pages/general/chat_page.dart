import 'package:flutter/material.dart';
import 'package:lovelace/components/cards/chat_contact.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Contact> contacts = [ Contact('assets/images/logo.jpg', 'Salão', 'descrição'),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversas", style: TextStyle(color: Colors.white),),
      ),
      body: ListView(children: <Widget>[
       ...contacts
      ]),
    );
  }
}
