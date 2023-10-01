import 'package:flutter/material.dart';

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
      body: ListView(
        children: <Widget>[
          Contact()]),  
        );
  }
}

class Contact extends StatelessWidget {
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget> [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/logo.png"),
          ), ),
        Column(
          children: [
            Text("Nome"),
            Text("Descrição"),
          ],
        )
      ],
    );
  }
}
