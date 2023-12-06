import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:lovelace/components/texts/message.dart';
import 'package:lovelace/pages/general/colors.dart';

class TalkPage extends StatefulWidget {
  State<TalkPage> createState() => TalkPageState();
}

class TalkPageState extends State<TalkPage> {
  final controller = TextEditingController();

  List<Message> messages = [
    Message('oi', DateTime.now().subtract(Duration(minutes: 1)), false),
  ].reversed.toList();

  void sendMessage() {
    final message = Message(controller.text, DateTime.now(), true);

    setState(() {
      messages.add(message);
    });

    controller.clear();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lovelace',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
              child: GroupedListView<Message, DateTime>(
            elements: messages,
            groupBy: (message) => DateTime(
                message.date.year, message.date.month, message.date.day),
            groupHeaderBuilder: (Message message) => SizedBox(),
            itemBuilder: (context, Message message) => Align(
              alignment: message.isSentByMe
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Card(
                color: primary,
                shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    message.text,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          )),
          Row(
            children: [
              Container(
                width: 320,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        hintText: 'Escreva sua mensagem',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                ),
              ),
              FloatingActionButton(
                  child: Icon(Icons.send, color: Colors.white),
                  onPressed: sendMessage)
            ],
          ),
        ],
      ),
    );
  }
}
