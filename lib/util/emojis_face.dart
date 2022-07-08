import 'package:flutter/material.dart';

class EmojisFace extends StatelessWidget {
  final String emojiface;
  const EmojisFace({Key? key, required this.emojiface}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color:  const Color.fromARGB(255, 10, 63, 173),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Center(
          child: Text(
           emojiface,
            style: const TextStyle(
              fontSize: 28,
            ),
          ),
      )
    );
  }
}
