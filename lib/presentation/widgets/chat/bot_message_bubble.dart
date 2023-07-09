import 'package:flutter/material.dart';

class BotMessageBubble extends StatelessWidget {
  const BotMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primaryColorLight,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'test ipsum',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          'https://yesno.wtf/assets/yes/9-6403270cf95723ae4664274db51f1fd4.gif',
          width: size.width * 0.7,
          height: 150,
          fit: BoxFit.cover,
        ));
  }
}