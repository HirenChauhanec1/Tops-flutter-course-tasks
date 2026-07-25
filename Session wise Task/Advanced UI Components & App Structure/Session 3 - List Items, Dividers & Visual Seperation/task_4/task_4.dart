import 'package:flutter/material.dart';

class Chat {
  final String sender;
  final String lastMessage;
  final String time;
  final int unreadCount;

  Chat({
    required this.sender,
    required this.lastMessage,
    required this.time,
    this.unreadCount = 0,
  });
}

class ChatListScreen extends StatelessWidget {
  ChatListScreen({super.key});

  final List<Chat> chats = [
    Chat(
      sender: "John Doe",
      lastMessage: "Hey! Are we meeting today?",
      time: "09:30 AM",
      unreadCount: 2,
    ),
    Chat(
      sender: "Emma Watson",
      lastMessage: "I'll send the files shortly.",
      time: "08:45 AM",
    ),
    Chat(
      sender: "Alex",
      lastMessage: "Thanks for your help!",
      time: "Yesterday",
      unreadCount: 1,
    ),
    Chat(
      sender: "Sophia",
      lastMessage: "Let's catch up this weekend.",
      time: "Yesterday",
    ),
    Chat(
      sender: "Michael",
      lastMessage: "Can you review the document?",
      time: "Mon",
      unreadCount: 5,
    ),
    Chat(sender: "Olivia", lastMessage: "See you soon 😊", time: "Sun"),
    Chat(sender: "David", lastMessage: "Happy Birthday! 🎉", time: "Sat"),
    Chat(
      sender: "Sarah",
      lastMessage: "Call me when you're free.",
      time: "Fri",
      unreadCount: 3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Chats",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: ListView.separated(
        itemCount: chats.length,
        separatorBuilder: (context, index) =>
        Divider(
          height: 1,
          thickness: 0.5,
          color: Colors.grey,
          indent: 72,
          endIndent: 16,
        ),
        itemBuilder: (context, index) {
          final chat = chats[index];

          return ListTile(
            contentPadding:  EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 6,
            ),
            leading: CircleAvatar(
              radius: 26,
              backgroundColor: Colors.blue.shade100,
              child: Text(
                chat.sender[0],
                style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    chat.sender,
                    style:  TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  chat.time,
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                ),
              ],
            ),
            subtitle: Padding(
              padding:  EdgeInsets.only(top: 4),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      chat.lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                  if (chat.unreadCount > 0)
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      radius: 10,
                      child: Center(
                        child: Padding(
                          padding:  EdgeInsets.all(2),
                          child: Text(chat.unreadCount.toString(),style: TextStyle(fontSize: 12),),
                        ),
                      ),
                    )
                ],
              ),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Opened chat with ${chat.sender}"),
                  duration:  Duration(seconds: 1),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
