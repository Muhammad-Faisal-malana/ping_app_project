import 'package:flutter/material.dart';

import 'components/user_chat_card.dart';

class TicketNotes extends StatelessWidget {
  const TicketNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemBuilder: (context, i) {
              return Padding(
                padding: EdgeInsets.only(
                    left: i.isOdd ? 50 : 15,
                    bottom: 20,
                    right: i.isEven ? 50 : 15),
                child: NoteChatCard(
                  containerColor: i.isOdd ? Colors.blue : Colors.white,
                  textColor: i.isOdd ? Colors.white : Colors.black,
                ),
              );
            }),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 55,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color(0xFFD9D9D9)
            ),
            padding: const EdgeInsets.all(5),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: 'Write notes .......',
                      prefixIcon: Icon(Icons.emoji_emotions,
                        color: Colors.white)
                    ),
                  ),
                ),
                Container(
                    alignment: Alignment.center,
                    width: 40.0,
                    height: 40.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF3776A5),
                    ),
                    child: const Icon(Icons.camera_alt_rounded,
                        color: Colors.white)),
                const SizedBox(
                  width: 8,
                ),
                Container(
                    alignment: Alignment.center,
                    width: 40.0,
                    height: 40.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF3776A5),
                    ),
                    child: const Icon(
                      Icons.mic,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
