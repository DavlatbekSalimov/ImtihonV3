import 'package:flutter/material.dart';

class PersonSend extends StatelessWidget {
  final Widget? child;
  final String name;
  final ImageProvider<Object>? backgroundImage;
  const PersonSend(
      {super.key, required this.name, this.child, this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: backgroundImage,
            maxRadius: 36,
            child: child,
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
