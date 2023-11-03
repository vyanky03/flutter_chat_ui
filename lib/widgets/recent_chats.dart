import 'package:chat_app/home/chat_screen.dart';
import 'package:chat_app/models/message_model.dart';
import 'package:flutter/material.dart';

class RecenetChats extends StatelessWidget {
  const RecenetChats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, int index) {
              final Message chat = chats[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ChatScreen(user: chat.sender))),
                child: Container(
                  decoration: BoxDecoration(
                      color:
                          chat.unread ? const Color(0xFFFFEFEE) : Colors.white,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                  margin: const EdgeInsets.only(top: 5, bottom: 5, right: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage(chat.sender.imageUrl),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chat.sender.name,
                                style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.45,
                                child: Text(
                                  chat.text,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            chat.time,
                            style: const TextStyle(
                              letterSpacing: 0.5,
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          chat.unread
                              ? Container(
                                  width: 40,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'NEW',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                )
                              : const Text('')
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
